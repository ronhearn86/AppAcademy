# Write a method get_double_age that takes in a hash and returns
#  twice the "age" value of the hash.

def get_double_age(hash)
	hash["age"] *= 2
  return hash["age"]
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46

# Get Full Name
# Write a method get_full_name that takes in a hash containing a
#  first, last, and title. The method should return a string representing
# the hash's full name

def get_full_name(hash)
	return hash["first"] + " " + hash["last"] + ", the " + hash["title"]
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"

# Word Lengths
# Write a method word_lengths that takes in a sentence string and returns
# a hash where every key is a word of the sentence, and its' corresponding
# value is the length of that word.

def word_lengths(sentence)
	hash = Hash.new(0)
  	arry = sentence.split(" ")
  arry.each { |word| hash[word] = word.length}
	return hash
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}


# Retrieve Values
# Write a method retrieve_values that takes in two hashes and a key.
# The method should return an array containing the values from the two
# hashes that correspond with the given key.

def retrieve_values(hash1, hash2, key)
    arr = []
    arr << hash1[key]
    arr << hash2[key]
	return arr
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts

# Cat Builder
# Write a method cat_builder that takes in a name, color, and age.
#  The method should return a hash representing a cat with those values.

def cat_builder(name_str, color_str, age_num)
	cat_hash = {
      	"name" => name_str,
      "color" => color_str,
      "age" => age_num
    }
  return cat_hash
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts

# Ae Count
# Write a method ae_count that takes in a string and returns a hash
#  containing the number of a's and e's in the string. Assume the
#  string contains only lowercase characters.

def ae_count(str)
  	a = "a"
  	e = "e"
  	new = {
		"a" => 0,
      	"e" => 0,
    }
	str.each_char do |char|
      if a.include?(char)
        new["a"] += 1
      elsif e.include?(char)
        new["e"] += 1
      end
    end
  return new

end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

# Element Count
# Write a method element_count that takes in an array and returns a
# hash representing the count of each element in the array.

def element_count(arr)
  	new = Hash.new(0)
	arr.each {|elem|new[elem] += 1}

  return new
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}

# Select Upcase Keys
# Write a method select_upcase_keys that takes in a hash and returns
#  a new hash containing key-value pairs of the original hash that had
#   uppercase keys. You can assume that the keys will always be strings.

def select_upcase_keys(hash)
	upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  	new = {}
  hash.each do |k, v|

      if k == k.upcase

        new[k] = v

      end

  end
  return new
end


print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts

# Hand Score
# Write a method hand_score that takes in a string representing a hand of
# cards and returns it's total score. You can assume the letters in the
# string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2
# points, and J is 1 point. The letters of the input string not necessarily
# uppercase.

def hand_score(hand)
  hand = hand.upcase
	score = {
			"A" => 4,
      		"K" => 3,
      		"Q" => 2,
      		"J" => 1,
    }

  	total = 0
  	hand.each_char do |val|

      if score.has_key?(val)
        total = total + score[val]
      end
    end
    return total
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
