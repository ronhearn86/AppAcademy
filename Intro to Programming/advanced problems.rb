#array-giving enumerables
#map
# select


#replaces
# new_arr = []
# arr.each {|ele| new_arr << ele.upcase + "!"}
# print new_arr
# puts
arr = ["a","b","c","d"]
#map
new_arr = arr.map { |ele| ele.upcase + "!"}
print new_arr
puts


#select replacement
nums = [1,2,3,4,5,6]
#
# evens = []
# nums.each do |num|
#   if num % 2 == 0
#     evens << num
#   end
#
# end
# print evens
# puts
#select replacement

evens = nums.select { |ele| ele % 2 == 0}
print evens
puts

# part 2

arr = ["apple","bootCAMP","caRrot", "DaNce"]
new_arry = arr.map { |word| word[0].upcase + word[1..-1].downcase }
print new_arry
puts


#rewritten longer block
new_arry = arr.map do |word|
  first_char = word[0].upcase
  rest = word[1..-1].downcase
  first_char + rest
end
print new_arry
puts

#with index

new_arry = arr.map.with_index do |word, indx|
  first_char = word[0].upcase
  rest = word[1..-1].downcase
  new_word = first_char + rest
  new_word * indx
end
print new_arry
puts


################################################
#problems

# Map By Name
# Write a method map_by_name  that takes in an array
# of hashes and returns a new array containing the names
# of each hash.

def map_by_name(arr)
  	new_arry = []
	arr.map {|i| new_arry << i["name"]}
  return new_arry
end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts

# Map By Key
# Write a method map_by_key that takes in an array of hashes and
#  a key string. The method should returns a new array containing
#  the values from each hash for the given key.

def map_by_key(arr, key)
	return arr.map {|hash| hash[key]}
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts

# Yell Sentence
# Write a method yell_sentence that takes in a sentence string and
#  returns a new sentence where every word is yelled. See the examples.
#   Use map to solve this.

def yell_sentence(sent)
  # yell = sent.split(" ")
  # yell = yell.map { |char| char.upcase + "!" }
  # return yell.join(" ")
  return sent.split.map { |char| char.upcase + "!" }.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


# Whisper Words
# Write a method whisper_words that takes in an array of words and
#  returns a new array containing a whispered version of each word.
#   See the examples. Solve this using map :).

def whisper_words(words)
return words.map{ |elem| elem.downcase + "..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

# O Words
# Write a method o_words that takes in a sentence string and
#  returns an array of the words that contain an "o". Use select in your
#  solution!

def o_words(sentence)
	return sentence.split.select { |elem| elem.include?("o")}
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

# Last Index
# Write a method last_index that takes in a string and a character.
#  The method should return the last index where the character can be
#  found in the string.

def last_index(str, char)
  	arry = []
	str.split("").map.with_index do|i, indx|
	if i == char
      arry << indx
    end
    end
   return arry[-1]
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

# Most Vowels
# Write a method most_vowels that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

def vowel_count(word)
  count = 0
  vowels = "aeiouAEIOU"
  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  return count
end

def most_vowels(sentence)
  counts = {}
  words = sentence.split
  words.each { |word| counts[word] = vowel_count(word)}
  sorted = counts.sort_by { |key, val| val }
  return sorted[-1][0]

end

print most_vowels("what a wonderful life") #=> "wonderful"
puts
puts most_vowels("Onomatopoeia's are fun") #=>"Onomatopoeia's"
puts

# Prime
# Write a method prime? that takes in a number and returns a boolean,
# indicating whether the number is prime. A prime number is only
# divisible by 1 and itself.


def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end

  return true
end


puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

# Pick Primes
# Write a method pick_primes that takes in an array of
# numbers and returns a new array containing only the prime numbers.

def pick_primes(numbers)
  return numbers.select { |num| prime?(num)}
end

def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end

  return true
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts


#white a method prime_factors thats takes in a number
# and returns and array containing all the prime factors of
# the given number

def prime_factors(num)
  prime_facts = []

  (1..num).each do |i|
    if num % i == 0 && prime?(i)
      prime_facts << i
    end
  end

  return prime_facts
end

def prime?(n)
  if n < 2
    return false
  end

  (2...n).each do |i|
    if n % i == 0
      return false
    end
  end

  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

# Greatest Factor Array
# Write a method greatest_factor_array that takes in an array
# of numbers and returns a new array where every even number is
# replaced with it's greatest factor. A greatest factor is the
# largest number that divides another with no remainder. For example
#  the greatest factor of 16 is 8. (For the purpose of this problem
#    we won't say the greatest factor of 16 is 16, because that would
#     be too easy, ha)

def greatest_factor_array(arr)
	largest = []
  	arr.each do |num|
      if num % 2 == 0
        largest << (num/2)
      else
        largest << num
      end
    end
      return largest
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

# Perfect Square
# Write a method perfect_square? that takes in a number and returns
# a boolean indicating whether it is a perfect square. A perfect square
#  is a number that results from multiplying a number by itself. For
#  example, 9 is a perfect square because 3  3 = 9, 25 is a perfect
#  square because 5  5 = 25.

def perfect_square?(num)
	(2..num).each do |i|
      if i*i == num
        return true
      end
    end
  return false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true

# Triple Sequence
# Write a method triple_sequence that takes in two numbers, start
# and length. The method should return an array representing a
#  sequence that begins with start and is length elements long.
#   In the sequence, every element should be 3 times the previous element.
#   Assume that the length is at least 1.


def triple_sequence(start, length)
  	arry = []
	(1..length).each do | count|

      if count == 1
        arry << start
      else
        arry << arry[count-2] * 3
      end
    end
      return arry
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

# Summation Sequence
# A number's summation is the sum of all positive numbers less than
# or equal to the number. For example: the summation of 3 is 6 because
#  1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21.
#   Write a method summation_sequence that takes in a two numbers: start and
#    length. The method should return an array containing length total elements.
#     The first number of the sequence should be the start number. At any
#     point, to generate the next element of the sequence we take the summation
#      of the previous element. You can assume that length is not zero.

def summation_sequence(start, length)
	arry = []
  (1..length).each do |count|
    if count == 1
      arry << start
    else
      x = 0
      (1..arry[-1]).each do |i|
       x += i
      end
      arry << x
  	end
  end
    return arry
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print summation_sequence(5, 3) # => [5, 15, 120]


# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and
# second elements are 1. To generate further elements of the sequence
#  we take the sum of the previous two elements. For example the first
#   6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci
#    that takes in a number length and returns the fibonacci sequence
#    up to the given length.

def fibonacci(length)
	fib = [1, 1]

  	if length < 1
      return []
    elsif length == 1
      return [1]
    elsif length == 2
      return fib
    else
      (1..length-2).each do |shovel|
        fib << fib[-1] + fib[-2]
      end
    end

     return fib

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts

# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the
# original is shifted num characters in the alphabet

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""

  str.each_char do |char|
    old_idx = alphabet.index(char)
    new_idx = old_idx + num
    new_char = alphabet[new_idx % 26]
    new_str += new_char
  end

  return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

puts 27 % 26
