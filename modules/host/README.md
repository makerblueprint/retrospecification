Host Modules
============
This is a set of resources for common host devices. Each include file contains a `getPin`
function which returns an (integer) board-pin-number if the board has that feature.

Arduino Example:
```
int adc0_pin = getPin("adc");
```

Python Example:
```
adc0_pin = getPin("adc")
```

Maker Blueprint
===============
A set of helpful tools to speed along learning & development processes.
www.makerblueprint.com
