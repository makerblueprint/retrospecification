Enhanced Battery Connector
==========================
The typical series battery pack is just that: a simple set of batteries [wired
in series](https://en.wikipedia.org/wiki/Series_and_parallel_circuits#Series_circuits)
with some extra wires for monitoring things. This is pretty much the least
expensive way to manufacture batteries. Hobbyists prefer this approach due to
price & access to the raw components within the battery pack.

This connector is meant to be a very affordable complement to these batteries.

The idea is that you would be able to connect your battery to your charge
controller & the charge controller would load a preset based on the
[multi-cell battery resistor matrix](../../definitions/multi-cell-battery-resistor-matrix.md).
The Enhanced Battery Connector supports up to six batteries wired in series
(e.g. 1S, 2S, 3S, 4S, 5S & 6S battery packs).

Examples
--------
* 1S LiPo battery pack:
  * 1K Ohm resistor
* 6S Pb battery pack (e.g. a 12V lead acid battery):
  * 1.6 Ohm resistor
* 6S LiIo battery pack:
  * 160 Ohm resistor
* 6S LiPo battery pack:
  * 1.6K Ohm resistor 

Details
-------
Please refer to the
[DA-15](../dsub-da-15/dsub-da-15.yaml) or
[header-16](../../../connectors/module-internal/header-16/header-16.yaml)
spec for more details.
