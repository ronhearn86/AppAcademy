# enunerable methods
# array
#   .each
#   .each_with_index
# string
#   .each_char
#   .each_char.with_index

months = ["Jan", "Feb", "Mar", "Apr"]

# old method of iterating through

# i = 0
# while i < months.length
#   month = months[i]
#   puts month
#   i += 1
# end

# new enumerate method
#months.each { |month| puts month }    sinlge line
# arr.meth,each new var  output var

# months.each do |month|
#   puts month                    multiline
#   puts "---"
# end

sentence = "hello world"
#
# sentence.each_char do |char|
#   puts char                         multiline
#   puts "_"
# end
#
# sentence.each_char { |char| puts char }  single

# months.each_with_index do |month, idx|
#   puts month
#   puts idx                    returns var + index location
#   puts "---"
# end

# sentence.each_char.with_index do |char, idx|
#   puts char
#   puts idx            string index req . in with_index method
#   puts "---"
# end

# range enumerate
# (start..end).each  iterate from start to end inclusive
# (start...end).each  iterate from start to end excludiing end

(1..20).each { |num| puts num }


def fizBuzz(max)
  arr = []
  (1...max).each do |num|
    if num % 3 == 0 && num % 5 != 0 || num % 5 == 0 && num % 3 != 0
      arr << num
    end
  end
  return arr
end

print fizBuzz(20)
puts

(0...4).each { puts "hello"}

4.times { puts "hi" } # cleaner method for running code x times

# To Initials
# Write a method to_initials that takes in a person's name
# string and returns a string representing their initials.

# def to_initials(name)
# 	initials = []
#   	str = ""
#   	name.each_char do |initial|
#       if initial == initial.upcase
#         initials << initial
#         str = initials.join("")
#       end
#
#     end
#   return str
# end

def to_initials(name)
  parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # +> "MLG"

# First In Array
# Write a method first_in_array that takes in an array and
#  two elements, the method should return the element that
#  appears earlier in the array.

def first_in_array(arr, el1, el2)
	arr.each do |elem|
      if elem == el1 || elem == el2
        return elem
        break
      end
    end

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

# Abbreviate Sentence
# Write a method abbreviate_sentence that takes in a sentence string and
# returns a new sentence where every word longer than 4 characters has all
#  of it's vowels removed.

def abbreviate_sentence(sent)
  array = sent.split(" ")
  vowels = "aeiou"

  final = []
  array.each do |word|
    if word.length > 4
      new = ""
    	word.each_char do |char|
          if !vowels.include?(char)
          new += char
          end
    	end
      final << new
    else
    	final << word

    end
  end
	return final.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# Format Name
# Write a method format_name that takes in a name string
# and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
	new = str.downcase
  	arry = new.split(" ")
  	arry.each do |word|
      word[0] = word[0].upcase
    end
  return arry.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

# Is Valid Name
# Write a method is_valid_name that takes in a string and returns a boolean
#  indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  	arry = str.split(" ")
  	if arry.length >1
  	arry.each do |word|
      if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
      	return true
      else
        return false
      end
    end
	else
  	return false
	end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


# Is Valid Email
# Write a method is_valid_email that takes in a string
# and returns a boolean indicating whether or not it is
#  a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

# def is_valid_email(str)
#   	 x = str.split("@")
#   	count = 0
#   	numbers = "42"
#       x.each { |elem| count += 1}
#
#     if str.include?("@") && str.include?(".") && count < 3 && !str.include?(numbers)
#       return true
#     else
#       return false
#     end
# end
#
def is_valid_email(str)
  parts = str.split("@")
  if parts.length != 2
    return false
  end
  alpha = "abcdefghijklmnopqrstuvwxyz"
  left = parts[0]
  right = parts[1]
  left.each_char do |char|
    if !alpha.include?(char)
      return false
    end
    if right.split(".").length == 2
      return true
    else
      return false
end
# puts is_valid_email("abc@xy.z")         # => true
# puts is_valid_email("jdoe@gmail.com")   # => true
# puts is_valid_email("jdoe@g@mail.com")  # => false
# puts is_valid_email("jdoe42@gmail.com") # => false
# puts is_valid_email("jdoegmail.com")    # => false
# puts is_valid_email("az@em)ail")        # => false

# Reverse Words
# Write a method reverse_words that takes in a sentence
# string and returns the sentence with the order of the
# characters in each word reversed. Note that we need to reverse
#  the order of characters in the words, do not reverse the order
#    of words in the sentence.

def reverse_words(sent)
array = sent.split(" ")
  reversearray = []
  array.each do |word|
    reversearray << word.reverse

  end
return reversearray.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

# Rotate Array
# Write a method rotate_array that takes in an array and a number.
#  The method should return the array after rotating the elements
#   the specified number of times. A single rotation takes the last
#   element of the array and moves it to the front.

def rotate_array(arr, num)
  	(1..num).each do |count|
      last = arr.pop
      arr.unshift(last)
    end
  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts
