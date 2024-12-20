#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'
# require 'YAML'
input = <<END
5,3,2,2,1,1,4,1,5,5,1,3,1,5,1,2,1,4,1,2,1,2,1,4,2,4,1,5,1,3,5,4,3,3,1,4,1,3,4,4,1,5,4,3,3,2,5,1,1,3,1,4,3,2,2,3,1,3,1,3,1,5,3,5,1,3,1,4,2,1,4,1,5,5,5,2,4,2,1,4,1,3,5,5,1,4,1,1,4,2,2,1,3,1,1,1,1,3,4,1,4,1,1,1,4,4,4,1,3,1,3,4,1,4,1,2,2,2,5,4,1,3,1,2,1,4,1,4,5,2,4,5,4,1,2,1,4,2,2,2,1,3,5,2,5,1,1,4,5,4,3,2,4,1,5,2,2,5,1,4,1,5,1,3,5,1,2,1,1,1,5,4,4,5,1,1,1,4,1,3,3,5,5,1,5,2,1,1,3,1,1,3,2,3,4,4,1,5,5,3,2,1,1,1,4,3,1,3,3,1,1,2,2,1,2,2,2,1,1,5,1,2,2,5,2,4,1,1,2,4,1,2,3,4,1,2,1,2,4,2,1,1,5,3,1,4,4,4,1,5,2,3,4,4,1,5,1,2,2,4,1,1,2,1,1,1,1,5,1,3,3,1,1,1,1,4,1,2,2,5,1,2,1,3,4,1,3,4,3,3,1,1,5,5,5,2,4,3,1,4
END

# input = <<END
# 3,4,3,1,2
# END

input = input.split(",").map(&:to_i)

fish = {
  0 => 0,
  1 => 0,
  2 => 0,
  3 => 0,
  4 => 0,
  5 => 0,
  6 => 0,
  7 => 0,
  8 => 0
}

tally = fish.dup

input.each do |f|
  tally[f] += 1
end

256.times do
  new_day = fish.dup

  fish.keys.reverse.each do |f|
    if f == 0
      count = tally[0]
      new_day[8] += count
      new_day[6] += count
    else
      new_day[f - 1] = tally[f]
    end
  end
  tally = new_day
  puts tally
end

puts tally.values.sum


# puts fishes.count

