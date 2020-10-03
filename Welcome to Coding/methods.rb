#methods

# puts "hey programmers"
# puts "whats for lunch"

# defining a method
# def sayMessage
#   puts "hey programmers"
#   puts "whats for lunch"
# end
#
# #call a method
# # sayMessage
# # sayMessage
# # sayMessage
#
#
# puts "before the method call"
# sayMessage
# puts "after the method call"

# def sayHello(person1, person2)
#   puts "Hello " + person1 + " and " + person2 + "."
# end
#
# sayHello("Ron", "Amanda")

# def calc_avg(num1,num2)
#   avg = (num1 + num2) / 2.0
#   return avg # gives back a type of data
# end
#
# puts calc_avg(10, 5) # puts outside of method
# result = calc_avg(6,2) + 40 # store in a variable
# puts result

# Average Of Three
# Write a method average_of_three(num1, num2, num3)
#  that returns the average of three numbers
#
def average_of_three(num1, num2, num3)
	avg = (num1 + num2 + num3) / 3.0
    return avg
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666
