#conditionals

#num  = 42
#num  = -5
num  = 0

# if statement

if num > 0
  puts "Positive"
elsif num < 0
  puts "Negative"
else
  puts "Zero"
end

num = 8
if num > 0
  puts "Positive"
end

if num % 2 ==0
  puts "Even"
end

if num > 0
  puts "Positive"
elsif num % 2 ==0
  puts "Even"
end                # only chooses first conditional that is true


# Is Div By Five
# Write a method is_div_by_5(number) that takes in a number and
# returns the boolean true if the given number is divisible by 5,
# false otherwise

def is_div_by_5(number)
	if number % 5 == 0
      return true
    else
      return false
    end
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false

# Either Only
# Write a method either_only(number) that takes in a number
#  and returns true if the number is divisible by either 3 or 5,
#  but not both. The method should return false otherwise.

def either_only(number)
	if number % 3 == 0 && number % 5 == 0
      return false
    elsif number % 3 == 0 || number % 5 == 0
      return true
    else
      return false
    end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false

# Larger Number
# Write a method larger_number(num1, num2) that takes in
# two numbers and returns the larger of the two numbers.

def larger_number(num1, num2)
	if num1 > num2
      return num1
    else
      return num2
    end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100

# Longer String
# Write a method longer_string(str1, str2) that takes in two strings
# and returns the longer of the two strings. In the case of a tie, the
#    method should return the first string.


def longer_string(str1, str2)
	 l1 = str1.length
    l2 = str2.length
  	if l1 >= l2
      return str1
    else
      return str2
    end
end
puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"
