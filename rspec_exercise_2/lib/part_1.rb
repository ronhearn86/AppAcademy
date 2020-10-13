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
  v = "aeiou"
  str = ""
  sent = sent.downcase
  sent.split.each do |word|
    arr.each do | curse|
      if curse == word
        word.each_char.with_index do |s, i|
          if v.include?(s)
            word[i] = "*"

          else
            str += s
          end
          str += s
        end

      end
    end
  end
  return str
end


def power_of_two(num)

end
