Host Modules
============
A collection of 'host' Retro Module proposals.

What is a 'Host' Device?
------------------------
This specification suggests a different vision of what should be considered a
host device. Devices featuring interfaces which can easily manipulate physical
items should be considered host devices. Traditional computers, while certainly
powerful, should be relegated to the periphery (e.g. client devices).
Current 'host' devices are usually cheap & pretty slow. As time progresses,
these host devices will certainly be replaced with faster versions.
Look at it, if you will, from the perspective of the microcontroller. It is a
tiny device which can be put nearly anywhere. If installed in a jacket, which
is the host? Sure, the jacket is housing the microcontroller -- but the
microcontroller has the smarts. Other housings (e.g. clients) may be far
smarter than the microcontroller (a car, per-se). Most of the interfaces on a
car, however, are pretty locked down (you probably have resisted the urge to
re-program your car). Picturing microcontrollers as host devices is a matter
of convenience for those who write software for them.
For a microcontroller, all the world is an interface.

Resources
---------
Each include file contains a `getPin` function which returns an (integer)
device-pin-number if the device has that feature.

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
