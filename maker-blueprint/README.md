Maker Blueprint
===============
A set of helpful tools to speed along learning & development processes.
www.makerblueprint.com

Microcontroller Board Pinout Collection
---------------------------------------
This is a collection of includes for common boards. Each file contains a `getPin`
function which returns an (integer) board-pin-number if the board has that feature.

C* Example:
```
int adc0_pin = getPin("adc0");
```

Python Example:
```
adc0_pin = getPin("adc0")
```
