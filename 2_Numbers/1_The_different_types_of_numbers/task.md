# Types of numbers

---

*You will learn:*
- which types of numbers are available in Ruby
- how to create a certain type of number
- different ways to create a number

---

Ruby has following types of numbers: *Integer*, *Float*, *Rational*, and *Complex*.

## Integers

An *Integer* represents a *whole number*.
You can create an Integer by declaring the number, like `2000` or `-42`.
Ruby allows you to write more readable numbers by using underscores, e.g. `1_000_000`.
Using the underscore style does not change the value of an integer, so `2_000` is
perfectly the same as `2000`.

Another way to create an Integer is by calling `Integer()` with a parameter, e.g.:

`  Integer(3)`   *# => 3*
`  Integer('3')` *# => 3*

Internally, Ruby uses two different classes for Integers. Dependent on how big the
Integer is it uses a *Fixnum* or a *Bignum*. You don't have to worry about which class to
use, Ruby is taking care of this for you!

However, you can check which class Ruby uses for your number by calling the `class`
method on your number. Open a new terminal tab and open the interactive Ruby console
with `irb`. Then check the class of different numbers:

`  1000.class`                      *# => Fixnum*
`  4_611_686_018_427_387_904.class` *# => Bignum*

If you want to learn more, read about Fixnum and Bignum here:
- http://patshaughnessy.net/2014/1/9/how-big-is-a-bignum
- (ruby-doc core: Integer)

## Floats

A *Float* represents an *inexact real number*.
You can create a Float by declaring a number with a decimal place, like `3.0`
or `-2_000.25`.
Another way to create a Float is to call `Float()` with a parameter, e.g.:

`  Float(3)`   *# => 3.0*
`  Float('3')` *# => 3.0*

Read more about Float here: (ruby-doc core: Float).

## Rationals

A *Rational* represents a rational number (a paired integer number a/b, where b > 0).
You can create a Rational by calling `Rational()` with one or two parameters, e.g.:

`  Rational(2)`     *# => (2/1)*
`  Rational(2, 3)`  *# => (2/3)*
`  Rarional('2/3')` *# => (2/3)*

Read more about Rational here: (ruby-doc core: Rational).

## Complex numbers

A *Complex* represents a complex number.
You can create a complex number by calling `Complex()` with one or two parameters, e.g.:

`  Complex(2)`          *# => (2+0i)*
`  Complex(2.1, 0.2)`   *# => (2.1+0.2i)*
`  Complex('2.1+0.2i')` *# => (2.1+0.2i)*
`  Complex('2.1@0.2')`  *# => (2.0581398134666076+0.4172055946696286i)* - polar form

Read more about Complex here: (ruby-doc core: Complex).

---

Create a number of each described type and store it into a variable with the
lowercased name of the number's class (e.g. *rational* for Rational).
Create both types of Integers (*Fixnum* and *Bignum*)!

---
