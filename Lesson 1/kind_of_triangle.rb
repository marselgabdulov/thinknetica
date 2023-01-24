# frozen_string_literal: true

def right_triangle?(sides)
  sides = sides.sort
  c = sides[2]
  a = sides[0]
  b = sides[1]

  a**2 + b**2 == c**2
end

puts 'Введите три значения сторон треугольника через пробел:'
sides = gets.chomp.split.map(&:to_i)

if sides.uniq.size == 1
  puts 'Равнобедренный треугольник'
elsif sides.uniq.size == 2
  puts 'Равносторонний'
elsif right_triangle?(sides)
  puts 'Прямоугольный треугольник'
else
  puts 'Треугольник не является равносторонним, равнобедренным или прямоугльным'
end
