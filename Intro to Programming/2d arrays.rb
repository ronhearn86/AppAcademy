#2 dimendional arrays

arr = [
  ["a", "b", "c"],
  ["d","e"],
  ["f", "g","h"]
]

print arr
puts

print arr[1] # => ["d","e"]
subarray = arr[1] # => ["d","e"]
puts
print subarray[1] # => "e"
puts
print arr[1][1] # => "e"
puts
# iterate through a 2 dim array
arr.each do |subArray|
  print subArray
  puts
  subArray.each do |elem|
    puts elem
  end
end
#
# Combinations
# Write a method combinations that takes in an array of unique
#  elements, the method should return a 2D array representing
#  all possible combinations of 2 elements of the array.

def combinations(arr)
  	arry = []
	arr.each_with_index do | elem, indx|
      arr.each_with_index do |elem2, indx2|
        if indx2 > indx
          arry << [elem,elem2]
        end
      end
    end
  	return arry
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


# Opposite Count
# Write a method opposite_count that takes in an array of unique numbers.
#  The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
   count = 0
 nums.each_with_index do | elem, indx|
     nums.each_with_index do |elem2, indx2|
       if indx2 > indx && elem + elem2 == 0
         count +=1
       end
     end
   end
   return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

# Two Dimensional Sum
# Write a method two_d_Sum that takes in a two dimensional
# array and returns the sum of all elements in the array.

def two_d_sum(arr)
	sum = 0
  arr.each do |elem|
    elem.each do |num|
      sum +=num
    end
  end
  return sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15


# Two Dimensional Translate
# Write a method two_d_translate that takes in a 2 dimensional
# array and translates it into a 1 dimensional array. You can
#  assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(arr)
	count = 0
  	arry = []
  arr.each do |subarray|
    count = subarray[1]
    subarray.each do |elem|
      while count > 0
        arry << subarray[0]
        count -= 1
      end
    end
  end
  return arry
end
arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts

# Array Translate
# Write a method array_translate that takes in an array whose elements
#  alternate between words and numbers. The method should return a string
#  where each word is repeated the number of times that immediately follows
# in the array.

def array_translate(array)
	str_arry = []
  	num_arry = []
  	str = 0
  	num = 1
  	len = (array.length / 2)
  	final_arry = []
  len.times do |counter|
	str_arry << array[str]
    num_arry << array[num]
    str += 2
    num += 2
  end
  	num_arry.each_with_index do |num, indx|
      num.times do |count|
        final_arry << str_arry[indx]
      end
    end
  	return final_arry.join("")
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# Pig Latin Word
# Write a method pig_latin_word that takes in a word string and translates
#  the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  	vowels = "aeiou"

      if vowels.include?(word[0])
        return word + "yay"
      else
        word.each_char.with_index do |char, indx|
          if vowels.include?(char)
            return word[indx..-1] + word[0...indx] + "ay"
          end
        end
      end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
