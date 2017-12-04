#!usr/bin/env/ruby

# 17  16  15  14  13
# 18   5   4   3  12
# 19   6   1   2  11
# 20   7   8   9  10
# 21  22  23  24  25.

def highest_number_in_box n
  return 1 if n == 1
  highest_number_in_box(n - 1) + (8 * (n-1))
end

def number_of_elements_in_box n
  return 1 if n == 1
  8 * (n - 1)
end

def manhatten_distance(input = 368078)
  return 0 if input == 1

  n = 1
  while highest_number_in_box(n) < input
    n += 1
  end

  side = ((number_of_elements_in_box(n) - 4) / 4) + 1
  offset_from_middle = n - 1

  return (n - 1) + ((((highest_number_in_box(n) - input) % side )) - offset_from_middle).abs
end

p manhatten_distance()



