Production-Ready Modular Prototypes
===================================

Breadboards are meant for the workbench. Bummer.
------------------------------------------------
You should be able to throw your prototypes in a backpack. You should be able to tweak their code while at the coffee shop. You should be able to put your prototypes into production around the house or shop. That's the goal of the Retro Specification. The spec aims to set up a middle-ground between breadboard and production board.

There are many hardware interfaces in the wild. Some deserve reinforcement, while others deserve deprecation. The Retro Specification will document this drive toward convenient compatibility among all the things.

There is no need to make/buy a 3D printer or CNC machine... unless you want to. No need to do a large circuitboard production run... again, [unless you want to](connectors/module-internal/header-26/header-26.yaml). No need to crowdfund your idea or deal with the challenges of said campaign. There's nothing wrong with making/selling things in small quantities.

Think the spec needs some revision? Please submit a pull request. Your feedback is truly appreciated.

Upcycling
---------
> "Upcycling is the process of converting old or discarded materials into
  something useful and often beautiful."
  -hipcycle.com

The Retro Modules framework provides many great opportunities to transform
junk-bin hardware (and/or their housings) into new inventions or variations
on the original product. Re-use these objects. Save them from the garbage
heap if possible. If the internals are no longer useful, send them to e-waste
facilities & re-use the enclosure.

Minimum Viable Products
-----------------------
This concept is certainly worth an interweb search. It is the idea that a product can be put into production while not being fully complete. Some features of the product may be more minor & can be finished later. Headed to a demo with a grip of modules? Show off the module features that are functional. This approach has roots in theater & beyond. The audience won't know something is missing from a production unless they expect its presence. The audience is your user base... which may just be you. You can start using all sorts of not-quite-finished modules in the near-term, while slowly building toward completion of your grand scheme.

Collaboration
-------------
A stable spec amongst a group of people is a very valuable thing. It becomes easier to hack on a project with your friend on the other side of the world. When you meet up at Burning Man, your big group project could come together with greater ease. One of the modules failed? Kindly ask your other friend who sadly had to stay home this year to make & mail a replacement module.

Replication
-----------
When dealing with somewhat bigger projects, such as a life-size wearable animatronic puppet for Comic-Con, you may desire backup modules should one of your primary modules fail at the Con. If you're comfortable designing & printing circuit boards, consider using a [header](connectors/module-internal/header-26/header-26.yaml) or [card edge connector](connectors/module/card-edge-26/card-edge-26.yaml) in your design.
If you're not yet comfortable printing circuit boards, you can still easily solder a [header](connectors/module-internal/header-26.yaml) to a protoboard. When you've identified parts of your system that can be replicated easily, you may save time by making pairs of identical modules at the same time.

Maintenance & Upgrades
----------------------
One of the worst feelings, when starting to work on an old project, is realizing you forgot how you wired things a few years ago. When using a stable external spec, problems like these are minimized. That old robo-eyeball module you made for that Comic-Con puppet a few years ago? It probably still works and could work really well in that upcoming build. Just plug it back in & load your old code.

Getting Started
===============
Note: power contacts feature positive [DC](definitions/direct-current.yaml) unless stated otherwise.

Many electronics part stores will have a few DE-9 connectors for sale. A
module can be as simple as a resistor & LED connected to two of the pins.

Adapt Your Microcontroller
--------------------------
The first step is to adapt your microcontroller board. Thankfully, you don't
need to adapt the entire thing all at once. Lets start with support for a
module requiring `pwm` functionality by following the directives below. Start
with a 5V Arduino & a `socket-style` [DE-9 Connector](connectors/module/dsub-de-9/dsub-de-9.yaml).

##### Arduino => PWM-Capable [DE-9 Connector](connectors/module/dsub-de-9/dsub-de-9.yaml)
* `D5`     => [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml) `pwm` contact
* `5V`     => [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml) `digital-reference` contact
* `common` => [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml) `common` contact

Your First Retro Module
-----------------------
To make a module with a fading `led`, follow the wiring directives below. Use a
`pin-style` [DE-9 Connector](connectors/module/dsub-de-9/dsub-de-9.yaml).
Connect your module to the connector you made, above. Load the Arduino 'Fade'
example sketch. Set the `led` variable to `5` & upload.

##### [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml) <= LED
* `pwm`     <= 330 ohm resistor <= LED anode
* `common`  <= LED cathode

Your Second
-----------
Now consider making a separate servo module. You will need a 5 volt 180 degree
servo & another `pin-style` [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml).
Follow the wiring directives below.
Load the Arduino 'Sweep' example sketch & upload.

##### [DE-9](connectors/module/dsub-de-9/dsub-de-9.yaml) <= Servo
* `common`            <= Servo brown/black 'common' wire
* `digital-reference` <= Servo red 'power' wire
* `pwm`               <= Servo yellow/orange/white 'signal' wire

Note that we're connecting the power wire to the `digital-reference` pin. The
board voltage regulator isn't designed to handle much, but it can probably
drive a single small servo.

Next steps
----------
Ponder adding potentiometers to each of the above modules, via the `adc-*` pins
(A2 in Arduino parlance).
These are basic, but fully usable interactive modules.

Consider "chainability" as well. 'Host' modules (which generally house an
Arduino), should have one or more `socket-style` connectors. 'Client' modules
should have both a `socket-style` & `pin-style` connector. If a client module
uses a non-serial contact (e.g. `pwm`) on the `pin-style` connector, that pin
should be absent from its `socket-style` connector. The serial connections, as
summarized below, should pass through each module no matter what. If you're
putting your client modules in an enclosure, put a sticker on the module
describing which (if any) non-serial pins are in use.

Take a look at I2C, SPI and CAN bus. There are many cheap I2C devices out there
(accelerometers, LED displays, etc). Consider I2C & SPI for short to
medium-range digital communication. CAN bus is better for longer distances &
reliability. The `one-wire-data` communication protocol is unique & may prove
useful in wearable modules and/or modules that need to send basic messages.

Consider having 'proxy' microcontrollers in certain modules. Say you have a
SPI-based MP3 player board, but you want to avoid using SPI pins among your set
of modules. Build your module with a proxy microcontroller connected to the I2C
contacts, and only connect your MP3 player SPI wires to that internal proxy
microcontroller. You can then craft simple programs to serve as interfaces on
the I2C bus. If you're comfortable with CAN bus... choose that instead of I2C.

If you have a few minutes to spare, take a look at [some 3D models](models),
[host module ideas](modules/host) and [popular interfaces](connectors/module-internal).
