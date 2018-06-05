# ABCD Rotation ABCD Offset ABCD Encryption

### ABCD Rotatio

You have been given the following key:
```
41521
```

Write a program that takes the key as an Argument and converts it to it's 4 types of rotations which are `a_rotation`, `b_rotation`, `c_rotation` and `d_rotation`.
* The first two digits of the key are the "A" rotation (41)
* The second and third digits of the key are the "B" rotation (15)
* The third and fourth digits of the key are the "C" rotation (52)
* The fourth and fifth digits of the key are the "D" rotation (21)

You have been given the following date:
```
020315
```

### ABCD Offset

Write a program that takes the date as an argument and squares the date so `020315^2` becomes `412699225` then grab the last 4 digits, in this case `9225`. Then takes the last four digits an an Argument and converts it to it's 4 types of offsets which are the `a_offset`, `b_offset`, `c_offset` and `d_offset`.
* The first digit is the "A offset" (9)
* The second digit is the "B offset" (2)
* The third digit is the "C offset" (2)
* The fourth digit is the "D offset" (5)

### ABCD Encryption

Since four characters are encrypted at a time. Write a program that takes the rotations array and offsets array as an Argument and converts it to it's 4 encryption types which are `a_encryption`, `b_encryption`, `c_enctyption`  and `d_encryption`.
* The first character is rotated forward by the "A" rotation plus the "A offset" (50)
* The second character is rotated forward by the "B" rotation plus the "B offset" (17)
* The third character is rotated forward by the "C" rotation plus the "C offset" (54)
* The fourth character is rotated forward by the "D" rotation plus the "D offset" (26)

In order to run the test, you can run the test file from the `abcd_rotation_offset_encryption` directory. For example if the test suit is called `abcd_rotation_offset_encryption_test.rb`, you can run the following command:

```
ruby abcd_rotation_offset_encryption_test.rb
```

Then we'll exercise the functionality from a Pry session:
```ruby
$ irb
> require './abcd_rotation_offset_encryption.rb'
 => true
> key = '41521'
 => "41521"
> date = '020315'
 => "020315"
> m = Magic.new(key, date)
 => #<Magic:0x007f8197868330 @key="41521", @date="020315">
> m.rotation_numbers
 => [41, 15, 52, 21]
> m.offset_numbers
 => [9, 2, 2, 5]
> m.encrypt_numbers
 => [50, 17, 54, 26]
```
