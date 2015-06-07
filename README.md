---
tags: loops, default arguments
language: ruby
---

#Countdown to Midnight

Everyone loves a good countdown to midnight on New Year's Eve. Let's build our own! 


This lab is going to test your skills in writing while loops. Remember, a while loop will execute your block of code only while your defined requirement is fulfilled. 

For example, this script:
```ruby
x = 1
while x < 10
  puts "#{x} is less than 10"
  x += 1
end
```
Will print this:
```ruby
1 is less than 10
2 is less than 10
3 is less than 10
4 is less than 10
5 is less than 10
6 is less than 10
7 is less than 10
8 is less than 10
9 is less than 10
```
And return `nil`.

The `#{}` is a called interpolation. In this case, it's going to actually print out the value of x. If we just wrote `puts "x is less than 10"` it would print out the letter x instead of the number x is representing.

The `+=` is a form of iteration. It's basically saying the original value of x is one, but add 1 to that value every time we loop through this block, `x += 1` is the same as `x = x + 1`. The loop is going to stop executing as soon as we hit 10 (that was the condition we set). You can also use `-=` which would subtract incrementally with every trip through the loop.

You'll want to use the `coundtown_spec.rb` located in the `spec` directory to help you determine functionality. Write your code in `countdown.rb`.

1. Write a method that returns "HAPPY NEW YEAR!" using a while loop. A method will return the very last line of code that it executes. You'll want to be able to pass any infinitely large number to your method as an argument and have it count down. Remember to use interpolation is creating your return value. You'll also want your loop to print out the "#{number} SECONDS!"

2. Our Ruby program executes so quickly that it doesn't actually count down at the speed of 1 second per number. See if you can make the loop pause for one second each trip around. (hint: http://stackoverflow.com/questions/1329967/tell-ruby-program-to-wait-some-amount-of-time). You will want to do this in a new method. Take a look at `countdown_spec.rb` line 12 to see what your method should be called.

## Resources

[About.com on Loops in Ruby](http://ruby.about.com/od/rubyfeatures/a/loops_2.htm)
