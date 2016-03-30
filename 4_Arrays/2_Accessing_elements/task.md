# Accessing elements

---

*You will learn:*
- how to get single elements from an Array
- how to get subsets of elements from an Array

---

Each element in an Array is associated with a fixed place – its *index*.
The index is an Integer which allows to access an element in the Array.

The index 0 points to the first element, the index 1 to the second element, etc.
Negative indexes point to elements backwards from the last element. E.g. -1 points
to the last element, -2 points to the second last element, and so on.

## Getting a single element from an Array

You can get the object from an Array at an index by using squared brackets:

`  numbers = [2, 4, 9]` *# defining an Array `numbers`*
`  numbers[0]`          *# => 2
`  numbers[1]`          *# => 4
`  numbers[2]`          *# => 9
`  numbers[-1]`         *# => 9

If there is no element present for the given index you will get a *nil* value:

`  numbers[3]`          *# => nil

`[]` is just an ordinary method that is defined for an instance of Array.

Another way for getting a single element is using the alias method `at`:

`  numbers.at(0)`       *# => 2
`  numbers.at(-1)`      *# => 9
`  numbers.at(3)`       *# => nil

There are two methods for getting special elements of an Array: `first` and `last`.
`first` – as you might have guessed – returns the first element (at index 0),
and `last` returns the last element (at index -1):

`  numbers.first`       *# => 2*
`  numbers.last`        *# => 9*

## Getting a subset of elements from an Array

You can also pass 2 parameters to the `[]` method. This allows to select a subarray
by defining the index to start at and the number of elements you want to grab, e.g.:

`  numbers[1, 2]`       * # => [4, 9]*

returns 2 elements starting at index 1. If there are no elements for the given indexes
available, it returns *nil*:

`  numbers[10, 2]`      * # => nil*

Another way to select a subarray from an Array is to pass a *Range* of the wanted
indexes to `[]`:

`  numbers[1..2]`       * # => [4, 9]

In case the elements are not available for the indexes it will again return *nil*:

`  numbers[5..10]`      * # => nil*

For further information about the `[]` method, see (ruby-doc core: Array#[]).

---

Create an Array of 5 different programming languages (as Strings) and store it in
a *languages* variable.

Define a variable *first* and assign the first programming language to it.

Define a variable *last* and assign the last programming language to it.

Store the middle 3 programming languages in a variable *some_languages*.

---
