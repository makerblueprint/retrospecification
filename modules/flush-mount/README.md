Flush-Mount Modules
===================
The [Internet of Things](/definitions/iot.yaml) has presented a problem:
the market seems to want large devices that are connected to the internet,
yet manufacturer software updates are rare. These large devices have many
modular internal components, but are not easy to replace nor service.
If these large devices started featuring hot-pluggable cartridges, consumers
could replace stock cartridges with custom ones, or upgraded ones from the
manufacturer.

These cartridges, estimated to be about the size of an old hard drive, would
contain a small computer capable of withstanding the stress of being unplugged
without notice. There are a few methods one can use to adapt popular
credit-card-sized computers to be hot-pluggable. First of all, existing
hot-pluggable interfaces make life easy: HDMI, DisplayPort, USB & BaseT. All of
these connections can be expected to survive hot plugging. What remains: power.
Given the estimated size of the enclosure, there should be enough room for
a temporary power source (i.e. a USB-friendly battery or similar). With a
temporary power source in play, the computer can stay powered while it responds
to an automatic shutdown command.

Connectors
----------
These modules will require two things: plenty of contacts for power & data, and
contacts of varied length to support safer hot-plugging. Take a look at a classic
USB cable or USB key. The inner pair of contacts (data) are shorter than the
outer pair (power). This allows the USB device to ground & power up milliseconds
before the data pair is connected.

There are many connectors which share this characteristic. One in particular
may be an ideal fit for the Retro Specification:
[SCA](/connectors/sca/sca.yaml). These connectors were popular in
slightly dated SCSI drive bays. Consider adopting the 102mm x 25mm drive bay spec
(3.5" imperial) for your hot-pluggable modules. There should be enough room for
a credit-card-sized computer, small battery & short cables. You might be able to
use an existing hot-pluggable SCSI drive bay featuring an SCA connector. Also
consider depth of the module. Most walls are not as deep as a computer hard
drive, meaning a full-length module would stick out of a wall socket.

Suggested Use Cases
-------------------
* Hot-Pluggable Computing Cluster
* TV
* Fridge
* Microwave
* Coffee Maker
* Dishwasher
* Clothes Washer
* Clothes Dryer
* Garage Door Opener
* Vehicle
* Recreational Vehicle
