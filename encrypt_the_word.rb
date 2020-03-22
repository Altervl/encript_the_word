# encoding: utf-8

require 'digest'

puts "Введите слово или фразу для шифрования:"
message = STDIN.gets.chomp

enc_mtd = ""
until enc_mtd == "1" or enc_mtd == "2"
  puts "Каким способом зашифровать?\n
  1 - MD5\n
  2 - SHA1"

  enc_mtd = STDIN.gets.chomp
end

if enc_mtd == "1"
  enc_message = Digest::MD5.hexdigest(message)
else
  enc_message = Digest::SHA1.hexdigest(message)
end

puts "Результат:\n
#{enc_message}"