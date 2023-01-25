# frozen_string_literal: true

# first solution
fives = []
10.upto(100) { |n| fives << n if (n % 5).zero? }
puts fives

# second solution
puts (10..100).step(5).to_a
