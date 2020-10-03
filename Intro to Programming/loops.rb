# while loops


def repeatHello()

  puts "before loop"

  counter = 1
  while counter <= 5
    puts "hello"
    counter += 1
  end

  puts "after loop"
end

repeatHello()


def printNums()
  i = 10
  while i >= 0
    puts i
    i -= 1
  end
end

printNums()

def printNums2(min,max)
  i = min
  while i <= max
    puts i

  i += 3
  end

end
puts "___________"
printNums2(3,33)
puts "___________"
printNums2(10,100)


# iterating through loops with strings
str = "hello"
puts str[0]
puts str[1]
puts str[2]
puts str[3]
puts str[4]

i = 0
puts "_________before__________"
while i < 5
  puts str[i]
  i += 1
end

#  break and next
 puts "______Break________"
i = 1
while i <= 10
  puts i
   if i ==5
     break
   end
   i += 1
 end

 puts "_________Loop Ends____________"
#
# puts "______Next________"
# # i = 1
# # while i <= 10
# #   puts i
# #   if i ==5
# #
# #     next
# #   end
# #   puts i
# #   i += 1
# # end
#
# puts "_________Loop is infinite____________"

# Count E
# Write a method count_e(word) that takes in a string
# word and returns the number of e's in the word

def count_e(word)
	len = word.length
  	count = 0
  	i = 0
  	while len > 0

      if word[i] == "e"
        count += 1
      end
      i += 1
      len -= 1
    end
  	return count
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

# Count A
# Write a method count_a(word) that takes in a string word and
# returns the number of a's in the word. The method should count
# both lowercase (a) and uppercase (A)'

def count_a(word)
	i = 0
  	count = 0
  while i < word.length
    if word[i] == "a" || word[i] == "A"
      count += 1
    end
    i += 1
  end
  return count
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

# Write a method, count_vowels(word), that takes in a string word
# and returns the number of vowels in the word. Vowels are the letters
#  a, e, i, o, u.

def count_vowels(word)
	i = 0
  	count = 0
  while i < word.length
    if word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o"|| word[i] == "u"
      count += 1
    end
    i += 1
  end
  return count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

# Sum Nums
# Write a method sum_nums(max) that takes in a number max and
#  returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
	tot = 0
  while max > 0
    tot += max
    max -= 1
  end
  return tot
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

#
# Factorial
# Write a method factorial(num) that takes in a number num and
# returns the product of all numbers from 1 up to and including num.

def factorial(num)
	tot = 1
  while num > 0
    tot *= num
    num -= 1
  end
  return tot
end


puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# def reverse(word)
# 	return word.reverse
# end

def reverse(word)
  reversedStr = ""
  i = 0
  while i < word.length
    char = word[i]
    reversedStr = char + reversedStr
    i += 1
  end
  return reversedStr

end
# Reverse
# Write a method reverse(word) that takes in a string word and returns
#  the word with its letters in reverse order.

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"


# Is Palindrome
# Write a method is_palindrome(word) that takes in a string word and returns
# the true if the word is a palindrome, false otherwise. A palindrome is a
#  word that is spelled the same forwards and backwards.

# def is_palindrome(word)
# 	if word == word.reverse
#       return true
#     else
#       return false
#     end
# end

def is_palindrome(word)
  reversedStr = ""
  i = 0
  while i < word.length
    char = word[i]
    reversedStr = char + reversedStr
    i += 1
  end
  if word == reversedStr
    return true
  else
    return false
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
