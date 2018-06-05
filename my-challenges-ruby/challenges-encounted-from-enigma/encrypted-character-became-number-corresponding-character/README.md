# Encrypted Character Became Number Corresponding Character

You have been given the following character map:
```
["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
 "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
```
Write a program that takes an Array as an Argument and converts each number to it's corresponding character maps index. So number `25` returns `z` and `38` returns `,`. If the number is greater then 38, such as `62` you scan through the character map again so `62` - `38` = `24` which returns `y`.

In order to run the test, you can run the test file from the `encrypted_character_became_number_corresponding_character` directory. For example if the test suit is called `encrypted_character_became_number_corresponding_character_test.rb`, you can run the following command:

```
ruby encrypted_character_became_number_corresponding_character_test.rb
```

Then we'll exercise the functionality from a Pry session:
```ruby
$ irb
> require './encrypted_character_became_number_corresponding_character.rb'
 => true
> array = [69, 24, 62, 44, 86, 25, 72, 62, 68, 31, 90, 44, 54, 19, 71, 30, 69, 53, 91, 63, 54, 30, 57, 64, 87]
 => [69, 24, 62, 44, 86, 25, 72, 62, 68, 31, 90, 44, 54, 19, 71, 30, 69, 53, 91, 63, 54, 30, 57, 64, 87]
> m = Magic.new(array)
 => #<Magic:0x007fa57e8e3c00 @encrypted_number_array=[69, 24, 62, 44, 86, 25, 72, 62, 68, 31, 90, 44, 54, 19, 71, 30, 69, 53, 91, 63, 54, 30, 57, 64, 87]>
> m.corresponding_character
 => ["5", "y", "y", "g", "k", "z", "8", "y", "4", "5", "o", "g", "q", "t", "7", "4", "5", "p", "p", "z", "q", "4", "t", "0", "l"]
```
