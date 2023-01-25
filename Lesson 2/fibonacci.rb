# frozen_string_literal: true

# recursive algorithm is too slow
def resursive_fibonacci(num)
  num <= 1 ? num : fibonacci(num - 1) + fibonacci(num - 2)
end

def fibonacci(num)
  first_num = 0
  second_num = 1

  (num - 1).times do
    first_num, second_num = second_num, first_num + second_num
  end

  first_num
end

array = []
0.upto(100) { |n| array << fibonacci(n) }

puts array
