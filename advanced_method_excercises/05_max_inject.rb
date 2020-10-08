# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

#---Using inject we add num if max accumulate is less than num
def max_inject(*arr)
    return arr.inject(0){|max,num| max < num ? num : max}
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
