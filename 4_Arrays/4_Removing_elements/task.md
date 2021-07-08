# Removing elements from Arrays

---

*You will learn:*
- how to remove elements from the end of an Array
- how to remove elements from the beginning of an Array
- how to remove elements from an Array after a specific index
- how to remove a specific element

---

Once you have created an Array, there might be the case that you don’t want to keep
all of the Array’s elements. This is where some methods for removing elements come
in handy.

This unit will look into different ways of removing elements from an Array.

## Removing elements from the end of an Array

For removing one ore more elements from the end of an Array you can use the `pop`
method. The `pop` method modifies the orginal Array and returns the removed elements.
You can pass the number of elements to remove as argument:

`  numbers = [1, 2, 3, 4]`
`  numbers.pop(2)`        *# => [3, 4]*
`  numbers`               *# => [1, 2]*

If you don’t pass the number of elements it will delete one element by default:

`  numbers = [5, 6, 7, 8]`
`  numbers.pop`             *# => 8*
`  numbers`                 *# => [5, 6, 7]*

Note that, if you remove multiple elements, `pop` will return an Array with the removed
elements. If you just remove the last element it will return this element.

If you try to pop an element from an empty Array, there’s no element left to remove
and it will return *nil*:

`  [].pop`                  *# => nil*

## Removing elements from the beginning of an Array

For removing elements from the beginning of an Array you can use the `shift` method.
It takes an optional argument that specifies the number of elements to remove:

`  numbers = [0, 1, 2, 3]`
`  numbers.shift(3)`        *# => [2, 3]*
`  numbers`                 *# => [0, 1]*

If you don’t pass an argument it will only remove and return the very first element:

`  numbers = [2, 4, 6]`
`  numbers.shift`           *# => 2*
`  numbers`                 *# => [4, 6]*

Similar to `pop`, `shift` will return *nil* if it is called on an empty Array:

`  [].shift`                *# => nil*

## Removing elements after a specific index

There might be situations where you want to select all elements of an Array after
a certain position, e.g. all elements after the third element.
You can do this with the `drop` method:

`  fruits = ['apple', 'pear', 'lemon', 'melon']`
`  fruits.drop(2)`          *# => ["lemon", "melon"]*
`  fruits`                  *# => ["apple", "pear", "lemon", "melon"]*

In contrast to `pop` and `shift`, `drop` does not modify the original Array but 
creates a new Array that comprises the dropped elements.

## Removing specific elements

In case you know the elements in an Array, you can specificly remove these.
There are two similar methods for doing this: `delete` and `-`.

The difference is, that `delete` modifies the original Array, while `-` creates a new
Array and does not change the original Array.

`delete` takes the element that should be removed from the Array and returns the
removed element:

`  fruits = ['apple', 'lemon', 'lemon']`

`  fruits.delete('lemon')`  *# => "lemon"*
`  fruits`                  *# => ["apple"]*

As you can see, `delete` removes duplicated elements from the Array, here all the
*'lemon'* elements.

The `-` method takes an Array as argument. It also removes duplicated elements:

`  fruits = ['apple', 'lemon', 'lemon', 'melon']`

`  less_fruits = fruits - ['lemon']` *# => ["apple", "melon"]*
`  fruits`                           *# => ["apple", "lemon", "lemon", "melon"]*

The `-` does not modify the original Array but creates a new one. The original
Array that is stored in *fruits* remains the same.

Before going to this unit‘s task, let’s summarize all the learned methods for removing
elements from an Array:

`  pop`     *removes elements at end            modifies the original Array*
`  shift`   *removes elements at beginning      modifies the original Array*
`  drop`    *remove elements after given index  creates a new Array*
`  delete`  *removes the given element          modifies the original Array*
`  -`       *removes the given elements         creates a new Array*

---

Let’s use our baggage again and unpack a couple of things.
Define a variable *baggage* and assign an array with all the things you want to
take with you: *shoes*, *underwear*, *socks*, *kettle*, *glasses*, *shirt*, and *wallet*.

You just realized, that you actually want to wear your *shoes* (which are the first
thing in your baggage), so remove them from your *baggage*.

Your friend tells you that you won’t need the *kettle*, so delete it from your *baggage*, too.

Last, you think that it’s maybe a better idea to carry your *wallet* with you.
Thus, also pop the wallet from your *baggage*.

Now you’re good to go. Bon voyage!

---
