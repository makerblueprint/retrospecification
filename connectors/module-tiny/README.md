Tiny Module Connectors
======================
These connectors are best used on modules which require a small footprint, will
be worn, or must be lightweight. Some feature entirely new specs, while others
conform to well-established specs (connectors found on popular drones, etc).

This collection is very new & requires more thought. There are many, many
compact interfaces & protocols out there, particularly in the RC community.
The trouble with most tiny connectors is the frequency of their use & the varying
configurations in which they are used. A basic 3-pin servo is not compatible with
a S-Bus host, yet they both use the same type of connector.
The connectors below are currently under consideration based on their popularity.
As an industry grows, so does the embrace of known reliable standards. Other
standards fall out of popularity & are deprecated.

Another common theme with tiny modular systems is the re-use of one pin
for many different signal types. Say you have a modular system built around a
3-pin connector. Two of the pins can be expected to provide power, but the third
may have an unpredicable signal being transmitted over it, depending on which port
it is connected to (it could have `pwm`, `analog-signal`, `pixel-data`, etc.).
The risk of connecting multiple modules together incorrectly is high. We should
aim to avoid the approach and instead favor small connectors featuring a standard
chainable serial protocol & standard pinout.

Protocols Under Consideration
-----------------------------
* S-Bus
  Allows control of multiple servos, among other things.
  Frequently features keyed 3-pin connector.
* FlySky iBus
  Allows control of and feedback from multiple servos.

Connectors Under Consideration
------------------------------
TBD
