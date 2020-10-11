# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
    factor1 = []
    factor2 = []

#------- Adding Factors to Arrays
    (2..num1).each do |fact|
        if num1 % fact == 0
            factor1 << fact
        end
    end
    (2..num2).each do |fact2|
        if num2 % fact2 == 0
            factor2 << fact2
        end
    end

  #-------Iterating through to find common Factors

      factor2.each do |num|
          factor1.each do |count|
            if count == num
              return false
            end
          end
        end
#-------If no common factor found returning TRUE
    return true
end

p coprime?(25, 12)    # => true
#p coprime?(7, 11)     # => true
#p coprime?(30, 9)     # => false
#p coprime?(6, 24)     # => false
