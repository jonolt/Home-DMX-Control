/*
 * Copyright (C) 2019, 2020 Johannes N.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 2.1 only.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include <Arduino.h>
#include <SPI.h>
#include <EEPROM.h>
#include <DMXSerial.h>
#include <Temperature_LM75_Derived.h>
#include "dogm_7036.h"

#define LM75_ADDRESS 0x48

#define PIN_BACKLIGHT 11
#define PIN_LED_STATUS 12
#define PIN_ARDUINO_LED 13
#define PIN_POTI_KW A0
#define PIN_POTI_WW A1
#define PIN_INTERUPT 7
#define PIN_SW_UP A3
#define PIN_SW_DOWN A4
#define PIN_SW_COL A5

#define PIN_R232_REDE 4

#define EPPROM_BACKLIGHT 1
#define EEPROM_PAGE 0
#define EPROME_COL 2


//Display
dogm_7036 DOG;
byte DOG_ARROW_POS[] = {5, 9, 13};
byte arrow_none[] = {0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01};
byte arrow_up[] = {0x01, 0x03, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01};
byte arrow_down[] = {0x01, 0x01, 0x01, 0x01, 0x01, 0x05, 0x03, 0x01};

//Aquire Value
bool trace_ww = false;
bool trace_kw = false;
bool trace_start = false;
volatile bool isr_triggered = false;
volatile bool isr_state_sw_up = true;
volatile bool isr_state_sw_down = true;
volatile bool isr_state_sw_col= true;


//Others
bool status_led = true;
Generic_LM75 temperature(LM75_ADDRESS);


//Function
void writeDMX();
void set_toogle_status_led();
void trace(byte addr, byte poti_val, bool trace);
void isr();
byte get_addr_start();
byte get_poti_ww_value();
byte get_poti_kw_value();
byte get_poti_value(int pin);
void set_backlight();


void setup() {

  //Setup Display
  DOG.initialize(5, 6, 8, 9, 10, 1, DOGM162); //byte p_cs, byte p_si, byte p_clk, byte p_rs, byte p_res, boolean sup_5V, byte lines
  DOG.displ_onoff(true);
  DOG.cursor_onoff(false);
  DOG.define_char(0, arrow_none);
  DOG.define_char(1, arrow_up);
  DOG.define_char(2, arrow_down);

  //Setup Pins
  pinMode(PIN_BACKLIGHT, OUTPUT);
  digitalWrite(PIN_BACKLIGHT, HIGH);
  pinMode(PIN_LED_STATUS, OUTPUT);
  digitalWrite(PIN_LED_STATUS, HIGH);
  pinMode(PIN_R232_REDE, OUTPUT);
  digitalWrite(PIN_R232_REDE, HIGH);
  pinMode(PIN_SW_COL, INPUT);
  pinMode(PIN_SW_UP, INPUT);
  pinMode(PIN_SW_DOWN, INPUT);
  pinMode(PIN_INTERUPT, INPUT);
  pinMode(PIN_INTERUPT, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PIN_INTERUPT), isr, FALLING);

  //Setup EPPROM
  if (EEPROM.read(EEPROM_PAGE) > 9) {
    EEPROM.write(EEPROM_PAGE, 0);
  }
  if (EEPROM.read(EPROME_COL) > 2) {
    EEPROM.write(EPROME_COL, 0);
  }
  EEPROM.write(100, 0);
  EEPROM.write(101, 0);
  EEPROM.write(102, 0);
  EEPROM.write(103, 0);
  EEPROM.write(104, 0);
  EEPROM.write(105, 0);

  //Setup Communiication (DMX, Serial)
  DMXSerial.init(DMXController);
  Wire.begin();

}


void loop() {
  if(isr_triggered){
    delay(50);
    handle_isr();
  } 
  set_backlight();
  if (EEPROM.read(EEPROM_PAGE) != 0) {
    digitalWrite(PIN_ARDUINO_LED, LOW);
    int addr = get_addr_start();
    String strW = "S WW";
    String strK = String(EEPROM.read(EEPROM_PAGE));
    strK.concat(" KW");
    for (int i = 0; i < 3; i++) {
      char buf[3];
      sprintf(buf, " %03d", EEPROM.read(addr + 2 * i));
      strW.concat(buf);
      sprintf(buf, " %03d", EEPROM.read(addr + 2 * i + 1));
      strK.concat(buf);
    }
    DOG.position(1, 1);
    DOG.string(strW.c_str());
    DOG.position(1, 2);
    DOG.string(strK.c_str());
    byte col = EEPROM.read(EPROME_COL);
    DOG.position(DOG_ARROW_POS[col], 1);
    trace(addr + 2 * col, get_poti_ww_value(), &trace_ww);
    DOG.position(DOG_ARROW_POS[col], 2);
    trace(addr + 2 * col + 1, get_poti_kw_value(), &trace_kw);
    delay(100);
  }
  else
  {
    digitalWrite(PIN_ARDUINO_LED, HIGH);
    DOG.position(1, 1);
    DOG.string("S Temp:        C");
    DOG.position(11, 1);
    DOG.string(String(temperature.readTemperatureC(), 1).c_str());
    DOG.position(1, 2);
    DOG.string("0 intesity:");
    char buf[3];
    sprintf(buf, " %03d   ", EEPROM.read(EPPROM_BACKLIGHT));
    DOG.string(buf);
    DOG.position(12, 2);
    trace(EPPROM_BACKLIGHT, get_poti_kw_value(), &trace_start);
    delay(50);
  }
  writeDMX();
  set_toogle_status_led();
}

void writeDMX() {
  //send values from EPPROM to dimmer
  int addr = get_addr_start();
  //RegalUnten
  DMXSerial.write(1, EEPROM.read(addr + 0));
  DMXSerial.write(2, EEPROM.read(addr + 1));
  //RegalOben
  DMXSerial.write(3, EEPROM.read(addr + 2));
  DMXSerial.write(4, EEPROM.read(addr + 3));
  //Glasswand
  DMXSerial.write(5, EEPROM.read(addr + 4));
  DMXSerial.write(6, EEPROM.read(addr + 4));
  DMXSerial.write(7, EEPROM.read(addr + 5));
  DMXSerial.write(8, EEPROM.read(addr + 5));
}

void set_toogle_status_led() {
  //Toogle Statu LED (blinking)
  if (status_led) {
    status_led = false;
  } else {
    status_led = true;
  }
  digitalWrite(PIN_LED_STATUS, status_led);
}


void trace(byte addr, byte poti_val, bool* trace) {
  //compare register value and poti value, writes poti value into
  //EEPROMafter being eqaul for the first time
  if (*trace) {
    EEPROM.write(addr, poti_val);
    DOG.ascii(0);
  }
  else
  {
    byte val_ist = EEPROM.read(addr);
    if (poti_val >= val_ist - 2 && poti_val <= val_ist + 2) {
      *trace = true;
    } else if (poti_val < val_ist) {
      DOG.ascii(1);
    } else {
      DOG.ascii(2);
    }
  }
}

void isr(){
  isr_triggered = true;
  isr_state_sw_up   = digitalRead(PIN_SW_UP);
  isr_state_sw_down = digitalRead(PIN_SW_DOWN);
  isr_state_sw_col  = digitalRead(PIN_SW_COL);
}

void handle_isr() {
  //process all key pressses. Changes page or column.
  //detachInterrupt(digitalPinToInterrupt(PIN_INTERUPT));
  delayMicroseconds(20000);
  if (!isr_state_sw_col) {
    byte col = EEPROM.read(EPROME_COL);
    col++;
    if (col > 2) {
      col = 0;
    }
    EEPROM.write(EPROME_COL, col);
  } else {
    int page = EEPROM.read(EEPROM_PAGE);
    if (!isr_state_sw_up) {
      page++;
    } else if (!isr_state_sw_down) {
      page--;
    }
    if (page > 9) {
      page = 0;
    }
    if (page < 0) {
      page = 9;
    }
    EEPROM.write(EEPROM_PAGE, page);
  }
  trace_ww = false;
  trace_kw = false;
  trace_start = false;
  isr_triggered = false;
  //delay(100);
  //attachInterrupt(digitalPinToInterrupt(PIN_INTERUPT), isr, FALLING);
}

byte get_addr_start() {
  //returns start epprom address for values of current page
  return EEPROM.read(EEPROM_PAGE) * 10 + 100;
}

byte get_poti_ww_value() {
  //returns a 8bit value for the ww (RV1) poti
  return get_poti_value(PIN_POTI_WW);
}

byte get_poti_kw_value() {
  //returns a 8bit value for the kw (RV2) poti
  return get_poti_value(PIN_POTI_KW);
}

inline byte get_poti_value(int pin) {
  //returns a 8bit value for the poti
  return analogRead(pin) / 4;
}

void set_backlight() {
  analogWrite(PIN_BACKLIGHT, EEPROM.read(EPPROM_BACKLIGHT));
}
