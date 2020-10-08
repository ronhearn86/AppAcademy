#2 dimendional arrays

arr = [
  ["a", "b", "c"],
  ["d","e"],
  ["f", "g","h"]
]

print arr
puts

print arr[1] # => ["d","e"]
subarray = arr[1] # => ["d","e"]
puts
print subarray[1] # => "e"
puts
print arr[1][1] # => "e"
puts
# iterate through a 2 dim array
arr.each do |subArray|
  print subArray
  puts
  subArray.each do |elem|
    puts elem
  end
end
