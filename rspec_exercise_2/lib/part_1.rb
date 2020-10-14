def partition(arr, num)
  sub_great = []
  sub_less = []
  final = []
  arr.each do |i|
    if i >= num
      sub_great << i
    else
      sub_less << i
    end
  end
  final = [sub_less]+ [sub_great]
  final
end

def merge(hash_1, hash_2)
  new_1 = {}


  hash_1.each do |k, v|
    new_1[k] = v
  end

  hash_2.each do |k, v|
    new_1[k] = v
  end

  return new_1
end

def censor(sent, arr)
  sent2 = sent.downcase
  final = []
  change = false
    sent2.split.each do |gword|
      arr.each do |word|
      if word == gword
        change = true
      end
    end
    if change == false
      final << gword
    elsif change == true
      x = curse(gword)
      final << x
      change = false
    end

  end
  final[0]= final[0].capitalize
  z = final.join(" ")
  if z[1] == sent[1] || z[-1] == sent[-1]
    return z
  else
    return z.upcase
  end
end

def curse(str)
  v = "aeiou"
  new_str = ""
  str.each_char do |i|
    if v.include?(i)
      new_str += "*"
    else
      new_str += i
    end
  end
    return new_str
end

def power_of_two?(num)
  if num < 1
    return false
  end
  while true
      if num == 1
        return true
    elsif num % 2 == 0
      num = num /2
    else
      return false
    end
  end
end
