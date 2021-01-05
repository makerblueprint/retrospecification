# Production-Ready Modular Prototypes

## Breadboards are meant for the workbench. Bummer.
You should be able to throw your prototypes in a backpack. You should be able
to tweak their code while at the coffee shop. There is no need to make or buy a
3D printer or CNC machine. No need to do a circuitboard production run. No need
to crowdfund your idea or deal with the challenges of said campaign.
This community-maintained specification is (and will always be) free!

Think the spec needs some revision? Please submit a pull request.
Your feedback is truly appreciated.

## The Benefits of Retro Modules
### Upcycling
> "Upcycling is the process of converting old or discarded materials into
  something useful and often beautiful."
  -hipcycle.com

The Retro Modules framework provides many great opportunities to modify
junk-bin hardware or to tranform it into an entirely new product. Re-use these
objects. Save them from the garbage heap if possible. If the internals are no
longer useful, send them to reputable e-waste facilities & re-use the enclosure.

### Rapid Prototyping of Minimum Viable Product
This concept is certainly worth an interweb search. It is the idea that a
product can be used while lacking certain functionality. Some features of the
product may be minor & can be finished later. Headed to a demo with a grip of
modules? Only demonstrate module features that are functional.
This approach has roots in theater & beyond. The audience won't know something
is missing from a production unless they expect it to be there. The audience is
your user base... which may just be you. You can start using all sorts of
not-quite-finished modules in the near-term, while slowly building toward
completion of your grand scheme.

### Collaboration
A stable spec among a group of people is a very valuable thing. It becomes
easier to hack on a project with your friend on the other side of the world.
When you meet up at Burning Man, your big group project could come together
with greater ease. One of the modules failed? Ask someone to make & send a
backup!

### Redundancy
Many projects require redundant systems to allow fast repairs if part of the
project fails. Retro Modules meets that need by reinforcing modular design
patterns, such as using proxy microcontrollers which respond to data on
industry-standard communication protocols.

### Maintenance & Upgrades
One of the worst feelings, when starting to work on an old project, is when
realize you forgot how you wired things before. When using a stable external
spec, problems like these are minimized. That old robo-eyeball module you made
for that Comic-Con puppet? It probably still works! Just plug it back in, load
your old code & use it in a new project!

## Getting Started
You may not need to buy _anything_ to start building Retro Modules! Check your
parts bin. If you have a 3V microcontroller (or similar), an I2C device (such
as a port expander or accelerometer), & some DE-9 connectors, you're ready to
begin!

#### Important Notes
* Cables & connectors used by this framework can often be found:
    * in a garage
    * at an office
    * at a maker space
    * at discount electronics stores
    * at nearly any online electronics vendor
    * at E-Waste processing facilities
* Refer to the [tool list](tools.yaml) for tool recommendations.
* Refer to the [style guide](style-guide.yaml) for overall style recommendations.
* "Ground" is referred to as "common" in this specification. 
* Power contacts feature positive [DC](definitions/direct-current.yaml) unless stated otherwise.
* Use a DC-DC Regulator for devices requiring specific voltages (e.g. "AMS1117", "MP1584EN", or "LM2596")
* I2C & SPI logic level is 3.3V.
* Unbalanced analog audio sources should provide [line level](https://en.wikipedia.org/wiki/Line_level) signal
* Analog signals near digital signals will be subject to some interference.
  Some connectors support balanced & digital audio signals for pro audio
  applications. On most connectors, however, unbalanced line-level analog
  signal contacts are used to help facilitate easy experimentation with analog
  audio signals. These analog signal contacts have been arranged to help reduce
  risk of interference.
* Modules can be daisy-chained together with ease.
* Modules which provide power should only ever have `socket-style` connectors.
* Modules should typically have one `pin-style` connector.
* Modules may have zero or more `socket-style` connectors.
* If you're putting your client modules in an enclosure, put a sticker on the
  module describing what the module is & some of its capabilities.
* Typical ribbon cables support up to 1.2A per wire.
* A typical `d-sub` contact can only support up to 3A. Premium `d-sub` contacts
  typically support up to 5A.
* Add fuses to help protect power sources & small wires.
* Use polarizing keys in headers to help prevent incompatible connections.
* Unless explicitly recommended, do not connect connectors of one type directly
  to connectors of another type -- even if their pins line up.

### Adapt Your Microcontroller Board
A typical microcontroller board (e.g. Arduino, Teensy, etc.) is pretty modular
as-is. To make your microcontroller board into a Retro Module, you will often
use the contacts which communicate easily with other modules, while leaving
most other contacts disconnected. In this example we'll use a 3.3V
Arduino-style microcontroller board, a "Pin-Style" DE-9 connector for power
supply modules & a "Socket-Style" DE-9 connector for client modules. We're
using devices & connectors that are easy to hand-solder. If you wish to design
printed circuit board Retro Modules, no problem! There are headers for that.

#### Wiring Guide
Please refer to [this](connectors/dsub-de-9/dsub-de-9.yaml) document for the DE-9 Connector spec.

* Connect the `SCL` contact on the microcontroller to the `i2c-clock` contact on the "Socket-Style" DE-9 Connector.
* Connect the `SDA` contact on the microcontroller to the `i2c-data` contact on the "Socket-Style" DE-9 Connector.
* Connect the `VIN` contact on the microcontroller to the `fifteen-volts-max` contact on the "Pin-Style" DE-9 Connector.
  * Use a DC-DC converter if the microcontroller requires a supply voltage lower than 15V.
* Connect the `common` contact on the "Socket-Style" DE-9 Connector to the `common` contact on the "Pin-Style" DE-9 Connector.
* Connect the `common` contact on the microcontroller to the `common` contact on the "Socket-Style" DE-9 Connector.
* Connect the `fifteen-volts-max` contact on the "Socket-Style" DE-9 Connector to the `fifteen-volts-max` contact on the "Pin-Style" DE-9 Connector.

Congratulations! You've created your first Retro Module! Let's power it up!

### Adapt Your 9V Battery
You'll need a power source, of course! You will need a 9V Battery Clip Connector,
which will be soldered to a "Socket-Style" DE-9 Connector.

#### Wiring Guide
Please refer to [this](connectors/dsub-de-9/dsub-de-9.yaml) document for the DE-9 Connector spec.

* Connect the red wire of the 9V Battery Clip Connector to the `fifteen-volts-max` contact on the "Socket-Style" DE-9 Connector.
* Connect the black wire of the 9V Battery Clip Connector to the `common` contact on the "Socket-Style" DE-9 Connector.

That's it! You now have a 9V Battery Module! Feel free to power up your microcontroller module. 

### Adapt Your Accelerometer Board
A good example I2C device is a MPU-6050 board, which creates & sends its
accelerometer data to other device(s). Since the Retro Modules specification
requires 3.3V logic levels, your MPU-6050 Retro Module will require a 3.3V
voltage regulator (such as "AMS1117-3.3").

#### MPU-6050 Wiring
Please refer to [this](connectors/dsub-de-9/dsub-de-9.yaml) document for the DE-9 Connector spec.

* Connect the `SCL` contact on the MPU-6050 board to the `i2c-clock` contact on the DE-9 "Pin-Style" Connector.
* Connect the `SDA` contact on the MPU-6050 board to the `i2c-data` contact on the DE-9 "Pin-Style" Connector.
* Connect the `GND` contact on the MPU-6050 board to the `common` contact on the DE-9 "Pin-Style" Connector.
* Connect the `VCC` contact on the MPU-6050 board to the output of the 3.3V Voltage Regulator.
* Connect the common contact of the 3.3V Voltage regulator to the `common` contact on the DE-9 "Pin-Style" Connector.
* Connect the input contact of the 3.3V Voltage regulator to the `fifteen-volts-max` contact on the DE-9 "Pin-Style" Connector.

You now have your third Retro Module ready to go! Power down your
Microcontroller Retro Module, connect your Accelerometer Retro Module, power
them up & start coding!

## Conclusion
This framework is not just for microcontrollers, microcomputers & peripherals.
It is for small vaccuums, fume extractors, soldering irons, 3D printers, laptop
power supplies, power tools, audiovisual devices, lighting, robotics & more!

Consider taking a closer look at I2C, SPI and CAN bus. There are many
inexpensive I2C devices out there (accelerometers, LED displays, etc).
Consider I2C & SPI for short to medium-range digital communication. CAN bus
is better for longer distances & greater reliability. The `one-wire-data`
communication protocol is unique & may prove useful in wearable modules and/or
modules that need to send basic messages.

Consider having 'proxy' microcontrollers in certain modules. Say you have an
SPI-based MP3 player board, but you want to avoid using SPI pins among your set
of modules. Build your module with a proxy microcontroller connected to the I2C
contacts, and only connect your MP3 player SPI wires to that internal proxy
microcontroller. You can then craft simple programs to serve as interfaces on
the I2C bus. If you're comfortable with CAN bus... choose that instead of I2C.

If you have a few minutes to spare, take a look at [some 3D models](models),
[host module ideas](modules/host) and [popular interfaces](connectors).
