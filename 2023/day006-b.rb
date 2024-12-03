#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'
input = {
  61677571 =>  430103613071150
} 

# input = {
#   71530 => 940200
# } 
total = 1
num_ways_to_win = 0
input.each do |(time, distance)|
  looping = true
  loc = 0
  while loc <= time
    button_hold_len = time - loc
    dstnce = loc * button_hold_len
    num_ways_to_win += 1 if dstnce > distance
    loc += 1
  end
  # puts num_ways_to_win
  total = total * num_ways_to_win if num_ways_to_win > 0
  num_ways_to_win = 0
end


puts total
