# Converting numbers

---

*You will learn:*
- how to convert numbers to other number formats

---

There are several methods you can apply on numbers to explicitly convert a number
to another number format:

`  to_i` converts to an *Integer* number
`  to_f` converts to a *Float* number
`  to_r` converts to a *Rational* values
`  to_c` converts to a *Complex* number

Converting a number to its own type will just return the number, e.g.:

`  123.to_i`                *# => 123*
`  4.75.to_f`               *# => 4.75*
`  Rational(3, 7).to_r`     *# => (3,7)*
`  Complex(2.1, 3.2).to_c`  *# => (2.1+3.2i)*

If you convert a Float, a Rational or a Complex number to an Integer by calling
the `to_i` method then the digits after the decimal point are just cut off.
Note that the size of the fraction doesn't matter:

`  2.01.to_i` and `2.95.to_i` will both return *2*.

If you want to convert a float to an integer based on its digits after the decimal point,
you should have a look at the `#floor`, `#ceil`, and `#round` methods of a Numeric:

-  (ruby-doc core: Numeric#ceil)
-  (ruby-doc core: Numeric#floor)
-  (ruby-doc core: Numeric#round)

One thing you can't do is converting a Complex number with an imaginary part other
than `0` to an integer, float, or rational number.

For instance `Complex(5.3, 0.5).to_i` will throw an Error (*RangeError: can't convert 5.3+0.5i into Integer*),
whereas `Complex(5.3).to_i` will give you a *5*.

---

Convert numbers into other formats:

1. Convert a *Complex* number into an *Integer*
2. Convert a *Fixnum* integer into a *Float*
3. Convert a *Float* into a *Rational* number
4. Convert a *Rational* number into an *Complex* number

Store each result in a variable that is named like the resulting type of the conversion, e.g.
for 1. *integer*,
for 2. *float*,
and so on.
