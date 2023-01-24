# frozen_string_literal: true

puts 'Как Вас зовут?'
name = gets.chomp.capitalize!
puts 'Пожалуйста, укажите ваш рост:'
height = gets.chomp
optimal_weight = (height - 110) * 1.15
if optimal_weight.negative?
  puts 'Ваш вес уже оптимальный.'
else
  puts "#{name}, ваш оптимальный вес - #{optimal_weight.round(1)} кг."
end
