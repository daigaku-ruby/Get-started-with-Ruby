# Assigning data

---

*You will learn:*
- what a variable is
- three basic Ruby data types
- how you can assign data to a variable
- how to receive and use the assigned data again

---

## Variables

Running a programm is all about analyzing and manipulating data.
If you want to manipulate the same data multiple times, you have to store it
somewhere and access it when you need it. For this temporary storage of data
you use data containers, so called *variables*.

The name of a variables is usually underscore-separated downcased words, like:

`title`, `my_name`, `a_very_long_variable_name` (but try to keep it short!)

Variables that are not meant to be changed after they once got a value are
called *constants* and, by convention, have uppercase names, like `DEFAULT_NAME`.

Ruby is *case sensitive*, so it cares about capitalization of your variable names.
This means: `my_name` would be another variable than `my_Name`.

## Three basic data types

Now, we want to have a look at three basic data types in Ruby. We will see more
types later on.

*1. Strings:* A String represents a text or character and can be simply build by
writing text between two single quotes (*''*) or double quotes (*""*), e.g.

`'This is a string.'`, `'&'` or `"This too :)!"`

*2. Numbers:* Numbers can be build by just typing the number. Ruby uses several
number classes internally which you don't have to care about for now.
If you type a number, Ruby does all the work for you and uses the appropriate
class for the number. For instance, if you type `1` it will give you a *Fixnum*,
if you type `1.5` it will give you a *Float*.

*3. Booleans:* A Boolean represents a binary state. A Boolean's value can be
either *true* or *false*. Keep in mind not to put quotes around *true* or *false*
if you want to create a Boolean, else it would be a String!

## Variable = 'value'

You can assign data to a variable by using the equals sign `=`.
E.g. `learned = true` assigns the value *true* to the variable *learned*.

## Getting the data of a variable

After assigning a value to a variable you can acces the value again by typing
the variable's name.

Typing `learned` will give you the value *true* (which is a Boolean, remember?).

Let us now create some variables and print their values:

---

Set the following variables:

`  variable_types`  to the number *3*
`  language`        to the string *'Ruby'* and
`  learned`         to the boolean *true*

and print out each variable's value by using the *puts* method!

---