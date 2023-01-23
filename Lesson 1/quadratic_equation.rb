puts 'Введите три коэффициента через пробел:'

coefficients = gets.chomp.split.map(&:to_f)
a = coefficients[0]
b = coefficients[1]
c = coefficients[2]

d = b**2 - (4*b*c)

if d < 0
  puts 'Корней нет'
elsif d == 0
  x = -b/(2*a)
  puts "Дискриминант равен нулю, а корень равен #{x}"
else
  R = Math.sqrt(d)
  x1 = (-b + R)/(2*a)
  x2 = (-b - R)/(2*a)
  puts "Дискриминант - #{d}"
  puts "первый корень - #{x1}"
  puts "второй корень - #{x2}"
end