 def average(n1, n2)
   return (n1 + n2) / 2.0
 end

 def average_array(n)
   z = 0
   n.each do |i|
    z+= i
   end
   return z / n.length.to_f
 end

def repeat(str, num)
  return str * num
end

def yell(str)
return str.upcase + "!"
end

def alternating_case(str)
  arr = str.split(" ")
  arr2 = []
  arr.each_with_index do |word,i|
    if i%2 == 0 || i == 0
      arr2 << word.upcase
    else
      arr2 << word.downcase
    end
  end
  return arr2.join(" ")
end
