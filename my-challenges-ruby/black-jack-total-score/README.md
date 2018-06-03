Create a player object like:

```ruby
Player.new(Card.new(:heart, 'J'), Card.new(:heart, '6'))

=>(whats returned)
#<Player:0x007ffe25816a20
  @cards=[#<Card:0x007ffe25816ac0 @number="J", @suit=:heart>,
          #<Card:0x007ffe25816a48 @number="6", @suit=:heart>]
 >
```

Create an instance method called `total` which belongs to the `class Player`.
What needs to happen is that the instance method `total` adds up all of the `@number` instance  variables like for all of the card objects inside of the `@cards` array:
```ruby
#<Player:0x007ffe25816a20
 @cards=[#<Card:0x007ffe25816ac0 @number="J", @suit=:heart>,
         #<Card:0x007ffe25816a48 @number="6", @suit=:heart>]
>.total

=>(whats returned)
16
```

```ruby
#<Player:0x007ffe25816a20
 @cards=[#<Card:0x007ffe25816ac0 @number="A", @suit=:heart>,
         #<Card:0x007ffe25816a48 @number="J", @suit=:heart>]
>.total

=>(whats returned)
21
```

Hint: you will need help from the instance method `score`  which belongs to the `card Class`.
