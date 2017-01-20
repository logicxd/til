# Data Representation/Transistors

Computer represent information as 0s and 1s.
* Programs
* Input/output
* Intermediate variables

Ascii table can provide a mapping of 8 bits to characters.

## Transistors

* N-MOS: close - High voltage. Open - low voltage.
* P-MOS: close - Low voltage. Open - high voltage.

## Gate Implementation

Gates are implementations of basic boolean function such as AND, OR, NOT.

* AND function consists of a **SERIES** connection to High value.
* OR function consists of a **PARALLEL** connection to high value.
* Need to always be connected to one or the other (high, low). Otherwise the electronics fail.

 ![AND-OR-Gate-Representation](https://cloud.githubusercontent.com/assets/12219300/22124924/971cc57e-de46-11e6-8b81-3a03787f9aa2.png)

## One bit Adder

* Carry: represented by an AND gate.
* Sum: represented by an XOR gate.

## Symbol Representations

* `'`: NOT
* `*`: AND
* `+`: OR

## Sum of Products

Look at the truth table.
Get all the rows that evaluates to a 1.
And use a `+` to combine all the ones that evaluates to 1.

## Multiplexor

A box that has `i` number of inputs and a single output.
* Inside of it has a bunch of different gates.
* What it does is that it will count how many inputs are connected to the box.
