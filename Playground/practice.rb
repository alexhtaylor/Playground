# array = (1..100).to_a

# random = rand(1..100)
# puts random
# array.delete_at(random-1)

# array.each_with_index do |element, index|
#   if array[index] != index + 1
#     puts (index + 1)
#     break
#   end
# end

# unsorted_array = [rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100)]
# print unsorted_array
# print unsorted_array.sort.last

# How do you find all pairs of an integer array whose sum is equal to a given number?

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# array.each do |number|
#   array.each do |other_num|
#     if (number + other_num) == 10 && (number != other_num)
#       print [number, other_num]
#     end
#   end
# end

# How do you print the first non-repeated character from a string?

# string = "hello"
# array = string.chars

# array.each_with_index do |x, index|
#   if (x != array[index + 1]) && (x != array[index - 1])
#     puts x
#     break
#   end
# end

# hash = {
#   name: "Alex",
#   age: 24,
#   place: "birmingham"
# }
# hash.keys.each do |key|
#   hash[key] = "boobs"
# end

# p hash

# array = [1, 2, 3, 4, 5, 6]
# target = 8

# array.each do |num|
#   array.each do |other_num|
#     if (num + other_num < 8) && (num != other_num)
#       sum_1 = num + other_num
#       array.each do |other_other_num|
#         if sum_1 + other_other_num == 8
#           array_final = [num, other_num, other_other_num]
#         end
#       end
#     end
#   end
# end
# puts array_final

# 89 --> 8¹ + 9² = 89 * 1 n= 89 p = 1

# def dig_pow(n, p)
#   abcd = n.to_s.chars.map(&:to_i)
#   sum = 0
#   abcd.each_with_index do |letter, index|
#     sum += letter ** (p + index)
#   end
#   if sum % n == 0
#     return sum / n
#   end
# end

# p dig_pow(92, 1)

# def persistence(n) # return the number of times each digit in n has to be multiplied to reach a single digit number
#   i = 0
#   until n.to_s.chars.count == 1
#     array = n.to_s.chars.map(&:to_i)
#     n = array.inject(:*)
#     i += 1
#   end
#   return i
# end

# p persistence(55)

# def solution(number) # return all multiples of 3 and 5 below number
#   if number.negative?
#     0
#   else
#     i = 1
#     sum = 0
#     until number - i == 0
#       if (number - i) % 3 == 0 || (number - i) % 5 == 0
#         sum += number - i
#       end
#         i += 1
#     end
#     sum
#   end
# end

# p solution(10)

# def digital_root(n) # eg for 999  return 9 + 9 + 9 = 27, 2 + 7 = 9
#   sum = 0
#   until sum < 10 && sum > 0
#     sum = 0
#     n.to_s.chars.map(&:to_i).each do |digit|
#       sum += digit
#     end
#     n = sum
#   end
#   sum
# end

# p digital_root(493193)

# def is_valid_walk(walk) # verify that a walk lasts 10 minutes and ends where it started
#   x = 0
#   y = 0
#   walk.each do |step|
#     if step == 'w'
#       x += 1
#     elsif step == 'e'
#       x -= 1
#     elsif step == 'n'
#       y += 1
#     else
#       y -= 1
#     end
#   end
#   if x.zero? && y.zero? && walk.count == 10
#     true
#   else
#     false
#   end
# end

# is_valid_walk(['n', 'w', 'w', 's', 's'])

# def spin_words(string)
#   array = string.split.map do |word|
#     if word.chars.count >= 5
#       word.chars.reverse.join()
#     else
#       word
#     end
#   end
#   array.join(' ')
# end

# p spin_words("Once")

# def rot13(string) # a = 97, z = 122 returns a string with each letter replaced with the 13th letter after it in the alphabet
#   array = string.chars.map do |letter|
#     if (letter.downcase != letter && letter.downcase.bytes.first > 109) && (letter.downcase != letter && letter.downcase.bytes.first < 123)
#        ((letter.downcase.bytes.first - 122) + 109).chr.upcase
#     elsif (letter.downcase != letter && letter.downcase.bytes.first <= 109) && (letter.downcase != letter && letter.downcase.bytes.first >= 97)
#       (letter.downcase.bytes.first + 13).chr.upcase
#     elsif (letter.downcase == letter && letter.downcase.bytes.first > 109) && (letter.downcase == letter && letter.downcase.bytes.first <= 123)
#       ((letter.downcase.bytes.first - 122) + 109).chr
#     elsif (letter.downcase == letter && letter.downcase.bytes.first <= 109) && (letter.downcase == letter && letter.downcase.bytes.first >= 97)
#       (letter.downcase.bytes.first + 13).chr
#     else
#       letter
#     end
#   end
#   array.join
# end

# p rot13("Hello lol")

# def pangram?(string) # quick brown fox
#   i = 0
#   ("a".."z").to_a.each do |letter|
#     if string.downcase.gsub(/\s+/, "").include?(letter) == false
#       i += 1
#     end
#   end
#   if i == 0
#     true
#   else
#     false
#   end
# end
# # ('a'..'z').all? { |x| string.downcase.include? (x) } the correct code

# p pangram?("Cwm fjord bank glyphs vext quiz")

def get_pins(observed)
  obser
end

p get_pint