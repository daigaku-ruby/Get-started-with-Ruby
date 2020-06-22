# Adding elements to Arrays

---

*You will learn:*
- how to add elements to the end of an Array
- how to add elements to the beginning of an Array
- how to add elements at a specific index to an Array

---

If you deal with an Array you will hardly just take the Array as is, but you likely want
to process and modify it or build new Arrays out of it.

This unit will look into different ways of adding elements to an Array.

## Adding elements to the end of an Array

An Array object has several methods for adding elements.
If you want to add a *single* element to the end you can use the `<<` method:

`  numbers = [1, 2, 3]`
`  numbers << 4`              *# => [1, 2, 3, 4]*

You could also write `numbers.<<(4)`, so the missing *.* and *()* are just a bit of
syntactic sugar.

A similiar method for adding an element to the end of an Array is `push`:

`  chars = ['a', 'b']`
`  chars.push('c')`           *# => ['a', 'b', 'c']*

The difference is, that `push` accepts multiple arguments, so that you can add as
many elements as you want in a single call:

`  chars.push('d', 'e', 'f')` *# => ['a', 'b', 'c', 'd', 'e', 'f']*

Both `<<` and `push` will modify the given Array directly. If you check the values of 
the variables above after calling the `<<` or `push` methods they will contain the 
added values:

`  numbers`                   *# => [1, 2, 3, 4] *
`  chars`                     *# => ['a', 'b', 'c', 'd', 'e', 'f']*

If you want to build a new Array from an existing one by adding elements, the `+` method
will help you to combine two Arrays:

`  numbers = [1, 2]`

`  more_numbers = numbers + [3]`           *# => [1, 2, 3]*
`  even_more_numbers = numbers + [-1, -2]` *# => [1, 2, -1, -2]*

The original Array will stay the same:

`  numbers`                   *# => [1, 2]*

## Adding elements to the beginning of an Array

If you want to add elements to the beginning of an Array instead, you can use the
`unshift` method which takes one or more elements to add as arguments:

`  numbers = [1, 2]`
`  numbers.unshift(0)`        *# => [0, 1, 2]*
`  numbers.unshift(-2, -1)`   *# => [-2, -1, 0, 1, 2]*

Similar to `push`, the `unshift` method will modify the original Array.

## Addding elements at a certain index

If adding an element to the end or the beginning of an Array is not what you want,
then there is an `insert` method, that allows you to insert one or more elements
at a defined position:

`  vegetables = ['potato', 'pepper']`
`  vegetables.insert(1, 'cucumber', 'cauliflower')`

The first argument is the index where to insert the first element (keep in mind, that
the indexing starts at 0, so *1* means: “Insert before the second element”).

Like `<<` and `push`, `insert` also modifies the original Array, so that *vegetables* holds
all the values now:

`  vegetables` *# => ['potato', 'cucumber', 'cauliflower', 'pepper']

Now that you have learned various methods for adding elements to an Array,
let’s summarize them again:

`  <<`      *adds element at end           modifies the original Array*
`  push`    *adds elements at end          modifies the original Array*
`  +`       *adds elements at end          creates a new Array*
`  unshift` *adds elements at beginning    modifies the original Array*
`  insert`  *adds elements at given index  modifies the original Array*

---

Prepare a case with some things for a trip:

Create a variable *baggage* holding an Array with one element *"shirt"*.
Add a pair of *"glasses"* before the shirt and some *"shoes"* after the shirt.
Then add another *"trousers"* and a pair of *"socks"* before the shoes.

---
