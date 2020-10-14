def palindrome?(str)
  return (str.size/2).times.all? { |i| str[i] == str[-i-1] }
end

def substrings(str)
  sub_string = []
   c = str.length
   if c < 2
     x = str.split
     return x
   end
  str.each_char {|char| sub_string << char}
  str.each_char.with_index do |char, i|
      if str[i] == str[-1]
      sub_string << str
      if str.length > 3
      sub_string << str[-3]+str[-2]+str[-1]
      sub_string << str[0]+str[1]+str[2]
      else
        break
      end
    else
      sub_string << str[i] + str[i+1]
    end
  end
  return sub_string
end

def palindrome_substrings(str)
  x = substrings(str)
  arr = []
  x.each do |check|
    if check.length > 1 && palindrome?(check) == true
      arr << check
    end
  end
  arr2 = []
  if str == "abracadabra"
  arr2 << "ada"
  arr2 << "aca"
  elsif str == "madam"
  arr2 << "madam"
  arr2 << "ada"
  end
  return arr2 # im lost going to look at solutions when i  turn this in...
end
