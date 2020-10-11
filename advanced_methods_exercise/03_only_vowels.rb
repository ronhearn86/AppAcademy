# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
    vowels = "aeiou"
    #---iterating through each character of the string
    #---checking if the char is not in vowles  variable and return false
    str.each_char do |char|
      if !vowels.include?(char)
        return false
      end
    end
    #if only vowels present in string returning true
    return true
  end
p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


