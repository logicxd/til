# Switches

## Packet Switch
Moves data in separate, small blocks based on the destination address in each packet.
When received, packets are reassembled in the proper sequence to make up the message.
Data gets broken down into small data packets and are sent out with a header address so that you can send them little by little without having to occupy the entire channel.

## Circuit Switch
Require dedicated point-to-point connections during calls.
It reserves a dedicated channel for the entire communication so as long as the connection is still on-going, the channel is reserved and nobody else can use it.

---
## Credit(s)
* [Packet-Switched vs. Circuit-Switched Networks by Lee Copeland (03-20-2000) ](http://www.computerworld.com/article/2593382/networking/networking-packet-switched-vs-circuit-switched-networks.html)
