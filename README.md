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

Consider [DA-15 connectors](connectors/module/dsub-da-15/dsub-da-15.yaml), which were once called 'Game Ports'. Before USB, joysticks would generally be connected to computers via these connectors. Since they're so rare in modern computing, they are a perfect choice for the Maker Movement. That said, the connectors are still pretty easy to find & work with. Most electronics part stores will have a few DA-15 connectors for sale. A module can be as simple as a resistor & LED connected to two of the pins.

Adapt Your Microcontroller
--------------------------
The first step is to adapt your microcontroller board. Thankfully, you don't need to adapt the entire thing at once. Lets start with support for `pwm` modules by following the directives below. Start with a 5V Arduino & a female [DA-15 Connector](connectors/module/dsub-da-15/dsub-da-15.yaml).

##### Arduino => PWM-Capable [DA-15 Connector](connectors/module/dsub-da-15/dsub-da-15.yaml)
* `D5`     => [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) pin 5
* `5V`     => [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) pin 9
* `common` => [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) pin 10
* `common` => [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) pin 12

Your First Retro Module
-----------------------
To make a module with a fading LED, follow the wiring directives below. Use a male [DA-15 Connector](connectors/module/dsub-da-15/dsub-da-15.yaml). Connect your module to the connector you made, above. Load the Arduino 'Fade' example sketch. Set the led variable to 5 & upload.

##### [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) <= LED
* `pwm`    <= 330 ohm resistor <= LED anode
* `common` <= LED cathode

Your Second
-----------
Now consider making a separate servo module. You will need a 5 volt 180 degree servo & another male [DA-15 Connector](connectors/module/dsub-da-15/dsub-da-15.yaml). Follow the wiring directives below. Load the Arduino 'Sweep' example sketch. Replace 9 with 5 in the sketch (e.g. `myservo.attach(5);`) & upload.

##### [DA-15](connectors/module/dsub-da-15/dsub-da-15.yaml) <= Servo
* `pwm`               <= Servo yellow/orange/white 'signal' wire
* `common`            <= Servo brown/black 'common' wire
* `digital-reference` <= Servo red 'power' wire

Note that we're connecting the power wire to the `digital-reference` pin. Since we're using a 5V microcontroller board, the `digital-reference` is roughly 5V. The board voltage regulator isn't designed to handle much, but it can probably drive a single small servo. If your microcontroller board were 3.3V, `digital-reference` would be roughly 3.3V. This pin, in more advanced modules, allows boards with differing logic levels to adapt.

Next steps
----------
Ponder adding potentiometers to each of the above modules, via the `adc-2` pin (A2 in Arduino parlance). These are basic, but fully usable interactive modules.

Consider chainability as well. 'Host' modules (which generally house an Arduino), should have one or more female connectors. 'Client' modules should have both a male & female connector. If a client module uses `adc-2` or `pwm` on the male connector, that pin should be absent from its female connector. The serial connections, as summarized below, should pass through each module no matter what. If you're putting your client modules in an enclosure, put a sticker on the module describing which (if any) non-serial pins are in use.

Take a look at I2C, SPI and CAN bus. There are many cheap I2C devices out there (accelerometers, LED displays, etc). Consider I2C & SPI for short to medium-range digital communication. CAN bus is better for longer distances & reliability. 1-Wire is also interesting & may prove most useful in the wearable realm.
If you have more time & resources, consider having 'proxy' microcontrollers in certain modules. Say you have a SPI-based MP3 player board, but you want to avoid using SPI pins. Build your module with a proxy microcontroller connected to the Retro Spec I2C bus, and only connect your MP3 player SPI wires to that internal microcontroller. You can then craft simple programs to serve as interfaces on the I2C bus. If you're comfortable with CAN bus... choose that instead of I2C.

Finally, take a look at [some host module ideas](modules/host) and [popular interfaces](connectors/module-internal).
