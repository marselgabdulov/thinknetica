# frozen_string_literal: true

MONTHS_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze

puts 'Введите число, месяц и год числами через пробел:'

date = gets.chomp.split.map(&:to_i)
day = date[0]
month = date[1]
year = date[2]

def leap_day(year)
  return 0 if (year % 100).zero? && (year % 400).nonzero?

  return 1 if (year % 4).zero?

  0
end

def calculate_date(day, month, year)
  return day if month < 2

  day + MONTHS_DAYS[0...month - 1].reduce(:+) + leap_day(year)
end

puts "С начала года #{calculate_date(day, month, year)} д. включительно."
