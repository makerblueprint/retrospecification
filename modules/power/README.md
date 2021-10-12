# Power Modules
Documentation for these modules is a work in progress.

Please click on one of the sections above to learn more about a specific module.

## Power Supply Notes
Retro Modules should be chainable & should also be able to share the same
backplane. This presents a problem if more than one power supply -- be it a
wall wort or battery -- is on the bus. The ideal is to have just one source
of power on the bus. Consider a backplane that has two batteries & a wall
wort connected. If the wall wort is on, that is the ideal power source on
the bus. The two batteries could use the power from the wort to recharge.
In order to accomplish this feat, two things are required. First, power
supplies need to be able to communicate. Second, power supplies must never
supply power on the bus without coordinating with other power supplies.
The prime candidate for communication among power supplies is the OneWire
interface. The runner-up is `canbus`. `canbus` is faster & more reliable,
but also less power-efficient & more costly. Power supplies that are well
suited for `canbus` (robot power supplies, etc) could also coordinate with
any devices found on the `one-wire` bus.
