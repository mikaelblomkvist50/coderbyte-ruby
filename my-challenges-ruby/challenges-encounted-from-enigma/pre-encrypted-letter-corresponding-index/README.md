# Pre Encrypted Letter's Corresponding Index

You have been given the following character map:
```
["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
 "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
```

And following message:
```
"this is so secret ..end.."
```

Write a program that takes the String message as an argument and converts each letter into it's corresponding character maps index. So letter `z` returns `25` and `,` returns `38`.

In order to run the test, you can run the test file from the `pre_encrypted_letter_corresponding_letter` directory. For example if the test suit is called `pre_encrypted_letter_corresponding_letter_test.rb`, you can run the following command:

```
ruby pre_encrypted_letter_corresponding_letter_test.rb
```

Then we'll exercise the functionality from a Pry session:
```ruby
$ irb
2.4.1 :001 > require './pre_encrypted_letter_corresponding_index.rb'
 => true
2.4.1 :002 > message = "this is so secret ..end.."
 => "this is so secret ..end.."
2.4.1 :003 > m = Magic.new(message)
 => #<Magic:0x007f81a085f808 @message="this is so secret ..end..">
2.4.1 :004 > m.corresponding_index
 => [19, 7, 8, 18, 36, 8, 18, 36, 18, 14, 36, 18, 4, 2, 17, 4, 19, 36, 37, 37, 4, 13, 3, 37, 37]
```
