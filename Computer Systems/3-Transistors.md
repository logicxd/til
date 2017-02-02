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

## Composite Gates

* AND, OR, NOT are basic gates.
* XOR is composite.
* NAND - Depends on the implementation. In some, it's basic.

## Multiplexor

A box that has `n` number of inputs, control input(s), and a single output.
* Inside of it has a bunch of different gates.
* Selects one of the many inputs as its output.
* Number of control inputs = `log(base 2) n`.
* Can think of it as a boolean function.

The control inputs control what is output.
The control inputs determine what to output by the number of input gates.

## Encoder

It's a multiplexor.
* `2^n inputs`
* `n` outputs.
* Turns the number of inputs into some number of outputs.

## Decoder

Reverse of an encoder.
* `n inputs`
* `2^n` outputs.
* Turns the number of inputs into some number of outputs.

## Comparator

* 2 inputs
* 1 output.
* Outputs 1 if the 2 inputs are equal. 0 otherwise.

1-bit comparator
* NOT(XOR(A,B))

2-bit comparator
* NOT( OR(XOR(A1,B1), XOR(A0,B0)) )

## Shifters

## Half Adder
* Generates sum and carry out.
* Circuit with two binary inputs and two outputs.
* Inputs: A, and B.
* Outputs: Sum, and CarryOut.

![Half-Adder-Table](https://cloud.githubusercontent.com/assets/12219300/22567703/de0be938-e945-11e6-9012-651a7fc4d7be.png)
* Sum = Not A*B + A*Not B = m1 + m2
* Carry = AB = m3

## Full Adder
* Has additional carry input.
* Inputs: A, B, and CarryIn.
* Outputs: Sum, and CarryOut.
* Takes longer than half adder since it has to wait for a signal from the CarryIn.

![Full-Adder-Table](https://cloud.githubusercontent.com/assets/12219300/22567704/de3d0f18-e945-11e6-8ed8-56dc15d938b9.png)

## ALU
A functional unit that performs
* logical operations such as AND, OR, XOR, NOT
* arithmetic operations such as ADD, SUB, MPY
* on given data types: 8-, 16-, 32- or 64-bit values.
  * Split ALU into slices that represents each bit.
  * E.G. 8 bit will have 8 slices.

Inside ALU
* Logic box
  * Has gates to perform AND, OR, etc.
* Arithmetic
  * Has a full adder.
* Mux
  * Input from logic box and arithmetic box.
  * Outputs some result.
