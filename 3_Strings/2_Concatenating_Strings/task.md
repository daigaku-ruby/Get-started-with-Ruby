# Concatenating Strings

---

*You will learn:*
- how to concatenate Strings
- how to append a String to another String
- about the ordinal number representation of Strings

---

If you look into Ruby's documentation for the the *String* class you will find several
methods to concatenate Strings: *(ruby-doc core: String)*.

Adding a String to another String is an often used operation when working with Strings.
In Ruby there are two possibilities to combine Strings:

`1) You can connect two Strings and create a third String out of them`
`2) You can directly modify an existing String`

Let's have a closer look into both the options:

## Combining Strings into a new String

A String comes with 2 methods to do this, namely `+` and `\*`.
You might think "Wait, these are Number operations!". Right, but the *String* class
does also define them.

The `+` method just adds a second String to the end of the first one:

`  'white' + 'space'` *# => "whitespace"*

If you want to have whitespace between these words you have explicitly add it to
the end of the first or the beginning of the second String.

The `\*` method takes an Integer *n* and runs the `+`-concatenation *n* times:

`  'la' \* 3`         *# => "lalala"* (here n = 3)

If your first String was stored in a variable, then a concatenation with the `+` and `\*`
methods doesn't change the value of this variable:

`  name = 'Ada'`
`  fullname = name + ' Lovelace'` *# => "Ada Lovelace"
`  puts fullname`                 *# => "Ada Lovelace"
`  puts name`                     *# => "Ada"

The variable `name` still has the value *"Ada"*, `fullname` holds the concatenated String.

## Directly modifying a String

There are two methods for directly adding a String to another String: `<<` and `concat`.

The `<<` method works like `+` with the difference however that it adds the second String
to the first one. Let's take the example from above again:

`  name = 'Ada'`
`  name << ' Lovelace'`  *# => "Ada Lovelace"
`  puts name`            *# => "Ada Lovelace"

The value of *name* is now the concatenation.

The method `concat` works the same but just has a more recognizable name:

`  name = 'William'`
`  name.concat(' King')` *# => "William King"
`  puts name`            *# => "William King"

Both `<<` and `concat` also take an integer number as parameter.
Hm, how can we add an Integer value to a String? The answer is that each one-character
String has an Integer representation (ordinal number). You can check which ordinal number
a character has by using the `ord` method:

`  'A'.ord`              *# => 65*
`  '?'.ord`              *# => 63*

This means if you write

`  'Pardon'.concat(63)`  *# => "Pardon?"*

then the *63* is first converted to its String representation and then added to the first String.

If you want to add a number – as it is – to a String, you have to convert it to a String before.
You can use the `to_s` method to achive this:

`  'User' << 1.to_s`     *# => "User1"*

Now that we learned about all these methods, let's concatenate some Strings!

---

Create the String *"Ruby rooooocks!"* by using the methods `+`, `\*` and `<<` or `concat`!

Create the whitespace and the exclamation mark by concatenating ordinal numbers to the String.
Use the `\*` method to add the multiple *ooooo*s to the String.

---
