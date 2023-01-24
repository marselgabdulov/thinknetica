# frozen_string_literal: true

puts 'Введите три коэффициента через пробел:'

coefficients = gets.chomp.split.map(&:to_f)
a = coefficients[0]
b = coefficients[1]
c = coefficients[2]

d = b**2 - (4 * b * c)

if d.negative?
  puts 'Корней нет'
elsif d.zero?
  x = -b / (2 * a)
  puts "Дискриминант равен нулю, а корень равен #{x}"
else
  r = Math.sqrt(d)
  x1 = (-b + r) / (2 * a)
  x2 = (-b - r) / (2 * a)
  puts "Дискриминант - #{d}"
  puts "Первый корень - #{x1}"
  puts "Второй корень - #{x2}"
end
