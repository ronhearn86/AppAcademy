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
  intials = ""
  parts.each { |part| intials += part[0] }
  return intials
end

print to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # +> "MLG"
