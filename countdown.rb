# method1
# Write a method that returns "0 left. HAPPY NEW YEAR!" using a *while* loop. 
# A method will return the very last line of code that it executes. 
# You'll want to be able to pass any infinitely large number to your method as 
# an argument and have it count down. 
# Remember to use interpolation is creating your return value. 
# You'll also want your loop to print out the "#{number} SECONDS!"

def countdown(time)
  while time > 0 # or use until time == 0
    puts "#{time} SECOND(S)!"
    time -= 1
  end
  return "0 left. HAPPY NEW YEAR!" # appears that in this case, puts or return are interchangeable
end

# the idea above is simple. Don't need proper counter because we will start with time, which will
# be provided to us, and then subtract by one each time

# ---------------------
# method 2
# Our Ruby program executes so quickly that it doesn't actually count down at the speed of 1 second per number. 
# See if you can make the loop pause for one second each trip around. 
# (hint: http://stackoverflow.com/questions/1329967/tell-ruby-program-to-wait-some-amount-of-time). 
# You will want to do this in a new method. Take a look at countdown_spec.rb line 12 to see what your method should be called.
# countdown_with_sleep should take at least 5 seconds to execute

def countdown_with_sleep(time)
  while time > 0
    puts "#{time} SECOND(S) LEFT!"
    time -=1
    sleep(1) #format is sleep(num_sec) to delay action
  end
  return "0 left. HAPPY NEW YEAR!"
end

# I initially put sleep(5) before the last end, but re-wrote it after re-reading instructions 
# to make it part of the loop

# OR this also works
# def countdown_with_sleep(time)
#    countdown(time)
#    sleep(time)
# end