# hashes
# key ==> value pairs

my_hash = {"name" => "App Academy", "color" => "orange", "age" => 5}
puts my_hash
puts my_hash["name"]
my_hash["age"] = "34"
puts my_hash

# hash methods
# .length
# .has_key? (k)
# .has_value? (v)
# .keys
# .values

print my_hash.keys
puts
print my_hash.values


pizza = {
  "style" => "New York",
  "slices" => 8,
  "diameter" => "16 inches",
  "toppings" => ["bacon", "onions"],
  "is_tasty" => true
}

pizza.each_key do |thing|
  puts thing
end

pizza.each_value do |val|
  puts val
end

pizza.each do | k, v|
  puts k
  puts v
  puts "------"
end


new_hash = {
  "a" => 28
}

puts new_hash["a"]

advHash = Hash.new(0)
puts advHash["a"]

advHash = Hash.new("hello")
puts advHash["a"]
advHash["a"] = "goodbye"
puts advHash

counter = Hash.new(0)
str = "bootcamp prep"
str.each_char { |char| counter[char] += 1}
puts counter

sorted = counter.sort_by {|k,v| k}
print sorted
