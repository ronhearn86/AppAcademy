# array methods

arry = ["ron", "amanda", "tyler", " alyssa"]
print arry
puts
arry << "jake"
print arry
puts

print arry.push("quinn") # adds to the end of an array
puts

print arry.pop()  # displays last element in array but is removed from array
puts
print arry
puts
print arry.unshift("quinn") # adds to the front of an array
puts
print arry.shift # removes the front of an array
puts
print arry
puts

# index and include? methods

arr = ["SF", "NY", "LA"]
puts arr.index("SF") # returns index

puts arr.include?("SF") # return boolean true or false
str = "hello"
puts str.include?("ello") # includes substrings

#reverse method
arr = [1, 2, 3, 4, 5, 6]
print arr
puts
print arr.reverse # reversed to a variable or print it does not change original
puts

print arr
puts
arr.reverse! # reversed change original
print arr
puts


str = "hello"
puts str.reverse
print str
puts
str.reverse!
print str
puts

# slicing method

arr = ["a", "b", "c", "d", " e"]
print arr[1..3] # get all including index 3 ' 2 dots'
puts

print arr[1...3] # get all excluding index 3 '3 dots'
puts

str = "bootcamp"
print str[1..3] # get all including index 3 ' 2 dots'
puts
print str[1...3] # get all excluding index 3 '3 dots'
puts
print str[-2] #get back a single character 2nd from last in this case
puts

# split and join

# split only works on strings and evaluates to an array

str = "follow the yellow brick road"

words = str.split(" ") #splits from space
puts

print str.split("y") #splits from space y
puts

puts words[2] # returns word at index 2


# join

puts words.join(" ")
