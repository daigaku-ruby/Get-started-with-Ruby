# Basic operators

---

*You will learn:*
- how to use basic arithmetic operators on numbers
- about the inaccuracy of *Float* values

---

All the numbers shown so far (*Fixnum*, *Bignum*, *Float*, *Rational*, and *Complex*)
share the following basic operator methods:

`  +`   (addition)
`  -`   (subtraction)
`  \*`   (multiplication)
`  /`   (division)
`  \*\*`  (exponentiation)

You can apply these arithmetic operators by writing one of them between two
numbers, e.g.:

`  3.2 + 7`                              # => 10.2
`  Rational(2, 3) - Rational(1, 2)`      # =>  (1/6)
`  3 \* 5`                                # => 15
`  Complex(2.0, 4) / Complex(4.0, 2.0)`  # => (0.8+0.6000000000000001i)
`  2 \*\* 3`                               # => 8

## "Strange" behaviours

When you try some combinations of numbers and operators in the interactive Ruby
console (irb), you might think that sometimes strange things are going on.

For instance, why will `3 / 7` always equal *0*? And why does `0.6 + 0.3 + 0.1` equal
*0.9999999999999999* and not *1.0*? (Try it, if you don't believe it!)

The explanation can be found in how Ruby handles numbers.
If you divide an *Integer* by another *Integer*, then the result will be the rounded
down *Integer* value (`5 / 2` equals *2*, `7 / 2` equals *3*).
To get a floating point number you have to use a *Float* for either the numerator
or the denominator or for both of them, i.e.:

`  3.0 / 7`   # => 0.42857142857142855
`  3 / 7.0`   # => 0.42857142857142855
`  3.0 / 7.0` # => 0.42857142857142855

The inaccuracy when summing up *Floats* appears beacause a *Float* is an approximation
of a decimal number. Since floating point numbers are stored in binary in your
computer, small rounding errors are likely to occur.

(if you really want to know what's going on here, you can read more about it on
http://docs.sun.com/source/806-3568/ncg_goldberg.html!)

This binary representation of *Floats* is also the explanation for the inaccuracy
when calculating the division of two *Complex* numbers (as in the example above,
where the maginary part is *0.6000000000000001* instead of *0.6*).

---

Connect numbers by each of the learned operators:

1. Sum up two *Rational* numbers
2. Subtract a *Float* from an *Bignum*
3. Build the product of three *Float* numbers
4. Divide a *Complex* number by a *Fixnum*
5. Calculate a *Rational* to the power of a *Float*

Store each result in a variable that is named like the result of the operation, e.g.
for 1. *sum*,
for 2. *difference*,
and so on.

---
