# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arr)
    final =[] #setting up an array to populate
    #--- Iterate through outer and inner arrays to shovel in single elements
    arr.each do |inner_array|
      inner_array.each do |elem|
        final << elem
        end
      end
      #--- Return a single array with elements
      return final
  end
  
p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
