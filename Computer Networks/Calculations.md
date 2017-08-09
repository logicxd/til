# Delays

* **Processing delay**: the time it takes to examine the packet's header and determine where to direct the packet. This can also include the time to check for bit-level errors in the packet.
* **Queuing delay**: the time it takes for a packet to wait for other packets to be done sending.
* **Propagation delay**: the time it takes for a bit to reach from sender to the receiver.
* **Transmission delay**: the time it takes to transmit all of the packet's bits into the link. This just has to leave the host, doesn't have to reach the receiver.
* **Nodal delay**: the total time for the whole process to complete.
  * Processing delay + queueing delay + transmission delay + propagation delay.
* **End-to-end delay**: the time it takes for N - 1 routers to connect with each other.
  * Processing delay + propagation delay + transmission delay.

* **Peer-to-peer**: 
* **Client-server**:
