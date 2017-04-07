# Operating System
OS is the software that acts an intermediary between the user applications and computer hardware.

## System layer (out to in)
* Users
* Applications
* Operating System
* Hardware

## Roles
Referee
* Resource allocation among users, applications.
* Isolation of different users, applications from each other.
* Communication between users, applications.

Illusionist
* Each application appears to have the entire machine to itself.
* Infinite number of processors, (near) infinite amount of memory, reliable storage, reliable network transport.

Glue
* Libraries, user interface widgets, ...
* Reduces cost of developing software.

## CPU <-> IO Device Communications

Polling
* CPU periodically checks device state.
* Used for fast and synchronous devices (e.g. display driver).
* CPU is used by device driver to continually check the device(registers), to see whether the device is ready for input or output.
* Frequent polling -> wasted CPU cycles.
* Infrequent polling -> buffer overrun, data loss.

Interrupts
* Device controller sets interrupt request line.
* Device notifies CPU when action is required.
* Used for slow or asynchronous devices (e.g. network driver)

Direct Memory Access (DMA)
* Device controller transfers the data directly from the IO in/out to the memory instead of having to go through the CPU.
* Good for having to transfer huge amount of data.
* **Channel (DMA controller)**: if the IO doesn't support direct transfer from the IO to memory, this channel handles the transfer.
