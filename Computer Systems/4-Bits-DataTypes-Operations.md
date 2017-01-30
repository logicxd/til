# Bits, Data Types, and Operations

## Representing data in a computer

Basic unit of information is the binary digit, or bit.
* State "1" - presence of voltage.
* State "0" - absence of voltage.
* A collection of `n` bits has `2^n` possible states.
  * ex: 2 bits has 00, 01, 10, 11 possible combinations.

## What kinds of data do we need to represent?

* Numbers - signed, unsigned, integers, floating point, complex, rational, irrational, ...
* Text - characters, strings, ...
* Images - pixels, colors, shapes.
* Sound - sequence of fixed-point numbers.

## Decimal Numbers

Values range from 0 - 9.

329
* 3 is the `most significant digit` since it's all the way to the left.
* 9 is the `least significant digit` since it's all the way to the right.

## Unsigned Binary Arithmetic

```
 10010
+ 1011
______
 11101
```

## Signed Integers

With n bits, we have 2^n distinct values
* assign about half to positive integers (1 through 2^n-1) and about half to negative (-2^n-1 through -1)
* that leaves two values: one for 0, and one extra.

Positive Integers
* zero in most significant bit.
Ex: 00101 = 5.

Negative Integers
* **sign-magnitude**: 0 set top bit to show negative, other bits are the same as unsigned.
Ex: 10101 = -5.
* **one's complement**: flip every bit to represent negative.
Ex: 11010 = -5.
* But in either case, the most significant (MS) bit indicates the sign. 0 = positive, 1 = negative.

## Two's Complement

Problem with sign-magnitude and 1's complement
* two representations of zero (+0 and -0): 00000, 10000
* arithmetic circuits are complex.

Two's complement representation developed to make circuits easy for arithmetic.
```
 00101   (5)
             1 - flip all the bits (1's comp)
 11010   
+    1       2 - add 1 to least significant (2's complement)
______
 11011   (-5)
```

Shortcut
* copy bits from right to left until and including the fist "1".
* flip the remaining bits to the left.
```
01101000
             (first copy the bits from least significants)
    1000
1001         (flip the remaining bits).
10011000     (2's complement)
```

## Converting Binary into Decimal
1. If leading bit is one, take two's complement to get a positive number.
2. Add powers of 2 that have "1" in the corresponding bit posiitons.
3. If original number was negative, add a minus sign.

```
X = 00100111 (base 2)
  = 2^5 + 2^2 + 2^1 + 2^0 = 32+4+2+1
  = 39 (base 10)  

X = 11100110
  = 00011010
  = 2^4 + 2^3 + 2^1 = 16 + 8 + 2
  = 26 (base 10)
X = -26 (base 10)
```

## Converting Decimal into Binary
1. Divide by two - remainder is least significant bit.
2. Keep dividing by two until answer is zero, writing remainders from right to left.
3. Append a zero as the MS bit; if the original number is negative, take two's complement.

```
X = 104 (base 10)

  104/2 = 52 r0
  52/2  = 26 r0
  26/2  = 13 r0
  13/2  =  6 r1
   6/2  =  3 r0
   3/2  =  1 r1
   1/2  =  0 r1 (stop when the answer is zero)

X = 1101000
```

## Addition
* Assume all integers have the same number of bits (extend out if necessary)
* Ignore carry out (the number that goes past beyond the most significant).
* Assume that the sum fits in n-bit 2's complement representation.

```
 01101000 (104)
+11110000 (-16)
_________
 01011000 (88)

 11110110
+11110111
_________
```

## Subtraction
* Take the two's complement and then just add.

## Sign Extension
To add two numbers, we must represent them with the same number of bits.
Add the MS bit to the left until they have the same number of bits.

```
4-bit
0100 (4)
1100 (-4)

8-bit
00000100 (still 4)
11111100 (still -4)
```

## Overflow
If operands are too big, then sum cannot be represented as an n-bit 2's comp number.

Ex:
```
 01000 (8)
+01001 (0)
______
 10001 (-15)
```

We have overflow when the signs of both operands are the same but the sign of the sum is different.

## Hexadecimal Notation
It is often convenient ot write binary (base-2) numbers as hexadecimal (base-16) numbers instead.
* Fewer digits -- 4 bits per hex digit
* Less error prone -- easy to corrupt long string of 1's and 0's.

## Converting from Binary to Hexadecimal
Hexadecimal numbers can be 0-9, or A-F (16 in total). 
* Group every 4 bits to turn into a hex digit.
* Start grouping from the right-hand side.
* If the converting binary doesn't have 4 bits, then append extra 0's to the left front until it has 4 bits.

A 4-bit example
```
1010                        (binary number)
8 + 0 + 2 + 0 = 10          (convert into decimal)
Since 10 > 9, 10 = A.       (Hexadecimal)

10 = A
11 = B
12 = C ... etc
```

More than 4-bit example
```
| 011 | 1101 | 0111 |
| --- | --- | --- |
| 3 | D | 7 |
```

## Fractions: Fixed-Point
* Use a **binary point** to separate the positive from negative powers of two. (similar to decimal points)
* 2's complement addition and subtraction still works.

```
        1*2^-1 + 0*2^-2 + 1*2^-3
 00101000.101 (40.625)
+11111110.110 (-1.25)
 00100111.011 (39.375)
```

## Very Large and Very Small: Floating-Point
Requires more bits of memory than is available.

Represented by these values:
* Sign (S): 0 for positive, 1 for negative.
* Exponent (E)
* Fractions (F)

Your value:
* `TODO FORMULA HERE`

## Text: ASCII Characters
Maps 128 characters to 7-bit code. Has both printable and non-printable(ESCAPE, ENTER) characters.
