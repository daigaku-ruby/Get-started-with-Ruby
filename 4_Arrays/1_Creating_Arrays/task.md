# Creating Arrays

---

*You will learn:*
- what an Array is
- what you can store in an Array
- how to create Arrays

---

An Array is a *collection of objects*.

This collection is *ordered*, which means that each object in an Array has a fixed
place assigned, a so called *index*.
The index is defined by an integer starting with 0: The first object in the Array
has the index 0, the second has the index 1, etc.

The index can be used to access the objects in an Array. You will learn more
about using the index in the next unit "Accessing elements".

An Array can hold all kinds of Ruby objects, such as Strings, Numbers, Booleans,
other Arrays, etc. The objects in an Array don‘t need to be of the same type.
An Array can hold all kinds of different objects (e.g. Strings, and Numbers) at the same time.

Let‘s create some Arrays!

## Creating an Array with []

Arrays can be created in different ways.
The shortest is surrounding a comma-separated list of objects with square brackets:

`  [1, 'Mary', true]`    *# => [1, "Mary", true]*

An Array is a Ruby object itself. If you ask for an Array‘s class with the `class` method
you will get `Array`:

`  numbers = [1, 2, 3]`
`  numbers.class`        *# => Array*

An Array is an object of type *Array*.

Instead of using `[]` you can also use the the longer way and call the `[]` method
of the *Array* class:

`  Array[1, 2, 3]`       *# => [1, 2, 3]*

## Creating an Array with #new

Besides using `[]`, you can create an Array by instantiating an Array with the `new` method.
The `new` method accepts two optional parameters: The number of elements, and the element itself.

If you call `new` without any parameter it will create an empty Array:

`  Array.new`            *# => []*

If you only define the first parameter as an Integer, it will use this Integer to define
the length of the new Array and will assign *nil* for each element:

`  Array.new(2)`         *# => [nil, nil]*

If you pass an Array as first parameter it will return the defined Array:

`  Array.new([1, 2, 3])` *# => [1, 2, 3]*

The actual interesting case is, if you pass both parameters.
It will create an array of the length given in the first parameter, with each element
being the second parameter. Here is an example:

`  Array.new(3, 4.5)`         *# => [4.5, 4.5, 4.5]*
`  Array.new(2, ['a', 'b'])`  *# => [['a', 'b'], ['a', 'b']]*


Another way of creating an Array is calling `Array()` with a single parameter:

`  Array('banana')`      *# => ["banana"]*

This will create a new Array with only the given value and is the same as calling `['banana']`.

---

Assign an Array to a variable *objects* by using the square brackets syntax for creating the Array.
The Array should have 3 elements: a Float, a Boolean, and an empty Array.

Create an Array that holds 3 times the String *'?'* by using the `new` method.
Assign the Array to a variable *question_marks*.

---
