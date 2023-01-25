# frozen_string_literal: true

alphabet = ('a'..'z').to_a
vowels = %w[a e i o u]

result = {}

vowels.each { |i| result[i] = alphabet.index(i) + 1 }
puts result
