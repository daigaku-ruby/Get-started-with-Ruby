# Interpolation

---

*You will learn:*
- how to create interpolated Strings

---

You already learned that you can define a String with either single quotes or
double quotes. The resulting String is the same, but if you use the double quotes
for creating a String you can interpolate variables within this string.

The interpolated statement has to be wrapped in *#{}* – a hash followed by curly brackets.
Let's look at an example:

`  amount = 5`
`  message = "I learned` *#{amount}* `units today."`

The variable `message` now has the value *"I learned 5 units today."*.
If you would use single quotes then the String would not evaluate the *#{}* part:

`  message = 'I learned #{amount} units today.'`

The variable `message` has the value *"I learned #{amount} values today."* –
the value of `amount` will not be interpolated into the String.

A common pattern is:

\* You should use single quotes `''` for Strings that are not interpolated
\* You should only use double quotes `""` for Strings that should be interpolated

---

Define a variable `firstname` and `lastname` with your firstname and lastname as values.
Then create a variable `fullname` and assign an interpolated String by using
the `lastname` and `firstname` variables.

The resulting String should look like *"YourLastname, YourFirstname"*.

 ---