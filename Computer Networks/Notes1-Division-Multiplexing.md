# Multiplexing

## Frequency Division Multiplexing (FDM)
Divides the spectrum into frequency bands, with each user having exclusive possession of some band in which to send their signal.

* **Guard band**: a limit amount to how much bandwidth is allocated per user.
* **OFDM**: Orthogonal Frequency Division Multiplexing. the channel bandwidth is divided into many subcarriers that independently send data.

## Time Division Multiplexing (TDM)
Users take turns (in a round-robin fashion), each one periodically getting the entire bandwidth for a little burst of time.

* **Guard time**: small timing variations between each turn.
* **STDM**: Statistical Time Division Multiplexing. Similar except that the individual streams contribute to the multiplexed stream not on a fixed schedule, but according to the statistics of their demand.

## Code Division Multiplexing (CDM)
A form of **spread spectrum** communication in which a narrowband signal is spread out over a wider frequency band.
