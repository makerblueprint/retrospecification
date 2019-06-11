Enhanced Battery Connector
==========================
```mermaid
graph LR
- --- B1
subgraph 3S Battery Pack
  B1 --- B2
  B2 --- B3
end
B3 --- +

-{ fa:fa-minus }
style - fill:transparent,stroke-width:0
+{ fa:fa-plus }
style + fill:transparent,stroke-width:0
B1((fa:fa-battery-three-quarters))
style B1 fill:transparent,stroke:#000
B2((fa:fa-battery-full))
style B2 fill:transparent,stroke:#000
B3((fa:fa-battery-half))
style B3 fill:transparent,stroke:#000
```

The typical series battery pack is just that: a simple set of batteries [wired
in series](https://en.wikipedia.org/wiki/Series_and_parallel_circuits#Series_circuits)
with some extra wires for monitoring things. This is pretty much the least
expensive way to manufacture batteries. Hobbyists prefer this approach due to
price & access to the raw components within the battery pack.

This connector is meant to be a very affordable complement to these batteries.

The idea is that you would be able to connect your battery to your charge
controller & the charge controller would load a preset based on the
[multi-cell battery resistor matrix](../../../definitions/multi-cell-battery-resistor-matrix.md).
The Enhanced Battery Connector supports up to ten batteries wired in series
(e.g. 3S, 4S, 6S, 10S battery packs, etc). Have a 20S battery? Just use two
Enhanced Battery Connectors & two charge controllers. It can also be used with
a what is typically referred to as a single-cell battery, such as a Lead Acid
12V car battery (which is actually a set of 6x +/- 2VDC cells connected in series).

Details
-------
Please refer to the [spec](../../../connectors/module-internal/header-16/header-16.yaml) for more.
