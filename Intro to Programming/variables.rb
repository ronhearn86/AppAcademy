#variables

location =  "SF"
puts location

my_num = 05
puts my_num

puts my_num + 05

count = 10
count += 1 # same as 'count = count + 1'
puts count

count -= 1 # same as 'count = count - 1'
puts count

count *= 1 # same as 'count = count * 1'
puts count

num  = 12
is_even = num % 2 == 0
puts is_even

# Variables Exercise 1

# 1. Declare a variable named `firstName` and assign it your first name as a string:

firstName = "Ron"
# 2. Declare a variable named `lastName` and assign it your last name as a string:
lastName = "Hearn"

# 3. Declare a variable named `fullName` and assign it the concatenation of
# your `firstName` and `lastName`. Be sure to put a space between your
# first and last names:
fullName = firstName + " " + lastName

# 4. print out the `fullName` variable
puts fullName

# Variables Exercise 2
sentence = "There is no spoon"
puts "---1:"
puts sentence + "?"   # ---1:
					            #There is no spoon?
puts "---2:"
puts sentence         # ---2:
					            #There is no spoon

sentence += "."
puts "---3:"
puts sentence         # ---3:
					            #There is no spoon.

num = 6 / 2
puts "---4:"
puts num              #There is no spoon.
					            #---4:
					            #3

puts "---5:"
puts sentence[num]    #---5:
					            #r


# Variables Exercise 2
num = 40
num + 5
puts "---1:"
puts num                   #"---1:"
                      	   #40

num += 2
puts "---2:"
puts num                   #"---2:"
                      		 #42

isEven = num % 2 == 0
puts "---3:"
puts isEven                #"---3:"
                      		 #true

isNegative = num < 0
puts "---4:"
puts isNegative            #"---4:"
                      		 #false
puts "---5:"
puts isEven || isNegative  #"---5:"
                           #true

puts "---6:"
puts isEven && isNegative  #"---6:"
                      	   #false
