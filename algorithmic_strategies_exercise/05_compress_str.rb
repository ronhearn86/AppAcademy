# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  compress = str.gsub(/(.)\1*/).to_a
  hash = Hash.new(0)
  arr = []
  compress.each do |len|
    if len.length < 2
      arr << len
    else
      arr << len.length
      arr << len
    end
  end

  new_arr = arr.map {|a| a.to_s}

  new_arr.each_with_index do |compact, i|
    if compact.length > 1
      compact.each_char do |char|
        new_arr[i] = char
      end
    end
  end

return new_arr.join("")

end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
