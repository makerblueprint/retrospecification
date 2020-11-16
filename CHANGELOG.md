# Change Log

## V1.1
* The `fifteen-volts-max` contacts on many connectors are now
    `twelve-volts-max`. This was done to maximize compatibility with numerous
    microcontrollers which are only able to tolerate up to 12VDC.
* Each module connector must only have digital signals with 3.3V logic level.
    If the components within the module has a differing logic level, it must be
    converted to 3.3V to be compatible with all other modules. By eliminating
    logic level conversion requirements for modules with 3.3V components, modules
    can be much simpler. With this change, `digital-reference` contacts are no
    longer required.
* Due to incompatibilities with the framework topology, many contacts dedicated
    to `pixel-data`/`pwm` now only feature `one-wire-data` signals.
    The following  connectors have been affected:
    * `dsub-de-9`
    * `header-2x5`
    * `card-edge-2x5`
    * `dsub-db-25`
    * `header-2x13`
    * `card-edge-2x13`
    * `micro-ribbon-36`
* `common-host-reset` contacts are now `common-reset`.
* `common-power-request` has been moved to contact 6 on the following connectors:
    * `dsub-de-9`
    * `header-2x5`
    * `card-edge-2x5`
    * `dsub-db-25`
    * `header-2x13`
    * `card-edge-2x13`
* `av-bus-audio-left` is now more clearly marked as `av-bus-audio-line-level-left` & has been moved to contact 12 on the following connectors:
    * `dsub-db-25`
    * `header-2x13`
    * `card-edge-2x13`
* `av-bus-audio-right` is now more clearly marked as `av-bus-audio-line-level-right` & has been moved to contact 13 on the following connectors:
    * `dsub-db-25`
    * `header-2x13`
    * `card-edge-2x13`
* Contacts 24 & 25 on the following connectors continue to be dedicated to line-level audio, but are now for auxiliary audio signals.
    * `dsub-db-25`
    * `header-2x13`
    * `card-edge-2x13`
