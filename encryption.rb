# frozen_string_literal: true

require 'digest'

puts 'Введите слово или фразу для шифрования'
word = $stdin.gets.chomp

puts 'Каким способом зашифровать?'
puts '1. MD5'
puts '2. SHA1'
choice = $stdin.gets.to_i

if choice == 1
  puts Digest::MD5.hexdigest(word)
else
  puts Digest::SHA1.hexdigest(word)
end

