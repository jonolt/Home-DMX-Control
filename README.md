# Home DMC Controll - DONT USE!
**Dont use the data in this repository. Board and Software are not well designed.**

Improved Project was moved to 2 seperate repositories:
- [Home-DMX-Board](https://github.com/jonolt/Home-DMX-Board)
- [Home-DMX-Firmaware](https://github.com/jonolt/Home-DMX-Firmaware)

is a simple arduino based DMX controller to controll led lights installed in your home to be used with DMX controllers and relais.

## Idea

The selection for the lighting scene in daily use should be as simple as possible. Therefore exactly two push buttons are used to move up and down in a list of lighting scenes. Since I am not a fan of idle transformers, a conventional light switch is used in my application to switch the whole system on and off. In the same way a corresponding scene could be set.

The individual scenes should be adjustable directly on the controller without additional hardware. The input of the scenes works like on lighting control desks without motor faders via potentiometer and buttons. To make the firmware easy (without programmer and co) and maintainable by everyone, an Arduino was used, because it has a USB converter and the IDE is easy to use and install.

## End User Usage

### Everyay Usage

Use the two buttons (connecte do SW2 and SW3 on pcb) to change sceene, by going up and down an scene list.

### Configuration

<img src="./steuerung_page0.JPG" alt="drawing" width="400"/>
<img src="./steuerung_page2.JPG" alt="drawing" width="400"/>

Exact User Interface depends on the project specific arduino programm. The brigness values are set with two analog potis (one for each line). They work like in Ligthning Cosoles. A arrow up/down means the current poti value is below/above the software value. Chhanfing the poti value will not change the software value until bot values where matched once. This is shown when only a pipe is displayed.

#### Page 0

It is used to adjust the brightness of the display and to show the temperature measured by the I2C temperature sensor.

#### Page X (1, ..., 9)

Each page stores one light scene. In my project I have 3 zones of WW/CW LED stripes which should be switched independently. The zones are divided into columns. With SW1 a column can be selected and with RV1 and RV2 the brightness can be adjusted. To switch pages SW2 and SW3 are used which are not on the board. 

## Hard- and Software

### Hardware

Because I want to see if my hardware is running I have a power LED (D4) and a status LED (D5), which is switched on and off in my loop. This may cost an I/O pin, but you can always see if the firmware is running properly.

The MAX481 (U2) is a transceiver for RS-485 and RS-422 communication based on DMX. It uses the TX and RX pins of the arduino. For a visual control of the DMX communication 2x2 (overkill) leds are connected via buffer (U4).

The display is controlled serially via the library provided by the manufacturer.

Since only one interrupt is available when using IC2, all three switches are connected to it via diodes (D1, D2, D3) and the pressed switch is determined in the ISR. The switches are already hardware debaunced.

The I2C temperature sensor can be used for an emergency shutdown, or as I use it, just to see how warm it is in the chamber with the transformers (I trust the thermal protection of the power supplies).

### Software

The scenes and the current page and current column are stored in the EPPROM. Each page/scene has in the current implementation 10 8-bit registers to store DMX values. These can be accessed by adding the number of the register to the start address of the page, where the start address depends on the current page.

The Main Loop consists of 4 parts

1. Check whether a switch has been pressed and do according action
2. Check whether the potentiometer value has changed and whether the value must be adopted and update the display
3. Write DMX values
4. Toogle status LED

Code is more or less self explaining (sorry for the a bit cryptic math logic for pages). Be aware of the pointers in the trace method.


## Project Example

<img src="./steuerung_total.JPG" alt="drawing" width="400"/>

## Licence

See subfolders for indiviadual licences for each part of this project.
