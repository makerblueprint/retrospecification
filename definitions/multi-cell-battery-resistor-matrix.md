Multi-Cell Battery Resistor Matrix
==================================
A set of resistor values which charge controllers can use to identify the
chemistry & quantity of batteries in a _series_ battery package.

For instance, if you have a 3S LiPo battery, it would be electrically
identified by a 1.2K Ohm resistor. If you have a 12V Lead Acid (Pb) battery,
it would be electrically identified by a 1.6 Ohm resistor (since a 12V Pb
battery is effectively 6x 6V Pb batteries wired in series). 

For added safety, 1% tolerance resistors or better are recommended.
The E24 series of resistors is used in this matrix.

|      |  Pb  | NiMH | LiIo | LiPo | LiFe |
| ---: | ---: | ---: | ---: | ---: | ---: |
|   1s |  1.0 |   10 |  100 | 1.0K |  10K |
|   2s |  1.1 |   11 |  110 | 1.1K |  11K |
|   3s |  1.2 |   12 |  120 | 1.2K |  12K |
|   4s |  1.3 |   13 |  130 | 1.3K |  13K |
|   5s |  1.5 |   15 |  150 | 1.5K |  15K |
|   6s |  1.6 |   16 |  160 | 1.6K |  16K |
|   7s |  1.8 |   18 |  180 | 1.8K |  18K |
|   8s |  2.0 |   20 |  200 | 2.0K |  20K |
|   9s |  2.2 |   22 |  220 | 2.2K |  22K |
|  10s |  2.4 |   24 |  240 | 2.4K |  24K |
|  11s |  2.7 |   27 |  270 | 2.7K |  27K |
|  12s |  3.0 |   30 |  300 | 3.0K |  30K |
|  13s |  3.3 |   33 |  330 | 3.3K |  33K |
|  14s |  3.6 |   36 |  360 | 3.6K |  36K |
|  15s |  3.9 |   39 |  390 | 3.9K |  39K |
|  16s |  4.3 |   43 |  430 | 4.3K |  43K |
|  17s |  4.7 |   47 |  470 | 4.7K |  47K |
|  18s |  5.1 |   51 |  510 | 5.1K |  51K |
|  19s |  5.6 |   56 |  560 | 5.6K |  56K |
|  20s |  6.2 |   62 |  620 | 6.2K |  62K |
|  21s |  6.8 |   68 |  680 | 6.8K |  68K |
|  22s |  7.5 |   75 |  750 | 7.5K |  75K |
|  23s |  8.2 |   82 |  820 | 8.2K |  82K |
|  24s |  9.1 |   91 |  910 | 9.1K |  91K |

Pb
: Lead Acid

NiMH
: Nickel Metal Hydride

LiIo
: Lithium-ion

LiPo
: Lithium-ion Polymer

LiFe
: Lithium Iron Phosphate

Due to environmental concerns, NiCd batteries are excluded from the matrix. 
