# arrays

letters = ["a", "b", "c"]
puts letters
print letters
puts ""
puts letters.length
puts letters[0]

my_array = ["ron", 34, 5, true, false]
print my_array
puts ""
print my_array[2]

arry = ["ron", "amanda", "tyler", " alyssa"]
print arry
print "\n"
arry << "jake"
print arry
arry << "quinn"
print "\n"
print arry
arry[0] = "zero"
print "\n"
print arry
<<<<<<< HEAD
=======

# Doubler
# Write a method doubler(numbers) that takes an array of numbers and
#  returns a new array
# where every element of the original array is multiplied by 2.

def doubler(numbers)
	i = 0
  	arry = []
  while i < numbers.length
    arry[i] = (numbers[i] * 2)
    i += 1
  end
  return arry
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]

# Yell
# Write a method yell(words) that takes in an array of words and
# returns a new array where every word from the original array
# has an exclamation point after it.

def yell(words)
	i = 0
  while i < words.length
    words[i] = words[i] + "!"
    i += 1
  end
  return words
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

# Element Times Index
# Write a method element_times_index(nums) that takes in an array of numbers
# and returns a new array containing every number of the original array
#  multiplied with its index.

def element_times_index(numbers)
  new_arry = []
  i = 0
  while i < numbers.length
    new_arry << numbers[i] * i
    i += 1
  end
  return new_arry

end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]

# Even Nums
# Write a method even_nums(max) that takes in a number max and returns an array
#  containing all even numbers from 0 to max

def even_nums(max)
	new_arry = []
  	count = 0
  while count <= max
    new_arry << count
    count += 2

  end
  return new_arry
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

# Range
# Write a method range(min, max) that takes in two numbers min and max. The
# method should return an array containing all numbers from min to max
# inclusive.

def range(min, max)
	i = min
  	arry = []
  while i <= max
    arry << i
    i += 1
  end
  return arry

end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

# Odd Range
# Write a method odd_range(min, max) that takes in two numbers min and max.
#  The method should return an array containing all odd numbers from min to
#   max (inclusive).

def odd_range(min, max)
	arry = []
  	i = min
  while i <= max
    if i % 2 == 0
    else
      arry << i
    end
    i += 1
  end
  return arry
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]

# Reverse Range
# Write a method reverse_range(min, max) that takes in two numbers min
# and max. The function should return an array containing all numbers
# from min to max in reverse order. The min and max should be excluded
# from the array
def reverse_range(min, max)
	i = max
  	arry = []
  	while i > min + 1
      i -=1
      arry << i
    end
  return arry

end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

# First Half
# Write a method first_half(array) that takes in an array and returns
# a new array containing the first half of the elements in the array.
# If there is an odd number of elements, return the first half including
#  the middle element.

def first_half(array)
	i = 0
  	arry = []
  while i < (array.length / 2.0)
    arry << array[i]
    i += 1
  end
  return arry
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

# Factors Of
# Write a method factors_of(num) that takes in a num and returns an array
# of all positive numbers less than or equal to num that can divide num.

def factors_of(num)
	i = 1
  	arry = []
  while i <= num
    if num % i == 0
      arry << i
    end

    i += 1
  end
  return arry
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

# Select Odds
# Write a method select_odds(numbers) that takes in an array of numbers and
# returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
	arry = []
  	i = 0
  while i < numbers.length
    if numbers[i] % 2 == 1
      arry << numbers[i]
    end
    i += 1
  end
  return arry
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

# Select Long Words
# Write a method select_long_words(words) that takes in an array of words
#  and returns a new array containing all of the words of the original array
#   that are longer than 4 characters.

def select_long_words(words)
	i = 0
    arry = []
  	while i < words.length
      if words[i].length > 4
        arry << words[i]
      end
      i += 1
    end
  return arry
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

# Sum Elements
# Write a method sum_elements(arr1, arr2) that takes in two arrays.
# The method should return a new array containing the results of adding
#  together corresponding elements of the original arrays. You can assume
#  the arrays have the same length.

def sum_elements(arr1, arr2)
	i = 0
  	arry = []
  while i < arr1.length
    arry << arr1[i] + arr2[i]
    i += 1
  end
  return arry
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

# Fizz Buzz
# Write a method fizz_buzz(max) that takes in a number max and returns
# an array containing all numbers greater than 0 and less than max that
#  are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
	i = 1
  	arry = []
  while i < max
    if i % 4 == 0 && i % 6 != 0 || i % 4 != 0 && i % 6 == 0
      arry << i
    end
   i += 1
  end
  return arry
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
>>>>>>> f2d3e544e575456b0f18f169bd65d6ea81540323
