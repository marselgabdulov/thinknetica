# frozen_string_literal: true

def finale_price(products)
  products.values.sum { |value| value[:calculated_price] }
end

result = {}

puts 'Следуйте инструкциям. Чтобы выйти, введите "стоп" в названии товара.'

loop do
  puts 'Введите название товара:'
  product = gets.chomp
  break if product == 'стоп'

  product_cart = {}
  result.store(product.to_sym, product_cart)

  puts 'Введите цену товара:'
  price = gets.chomp.to_f
  product_cart[:price] = price

  puts 'Введите количество товара:'
  quantity = gets.chomp.to_f
  product_cart[:quantity] = quantity

  # calculate price for product
  product_cart[:calculated_price] = price * quantity
end

puts result
puts "Цена покупок - #{finale_price(result)}"
