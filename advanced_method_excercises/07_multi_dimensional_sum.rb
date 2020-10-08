# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(array)
    #--- we use Flatten method to turn a multi to single array
    final = array.flatten
    #--- return final array with inject method to sum totals 
    return final.inject(:+)
  end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24
