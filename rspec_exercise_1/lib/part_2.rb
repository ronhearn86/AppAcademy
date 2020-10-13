def hipsterfy(word)
  vowel = "aeiou"
  rev = word.reverse
  rev.each_char.with_index do |char, i|
    if vowel.include?(char)
      rev[i] = ""
      return rev.reverse
    end
  end
  return word
end

hipsterfy("tonic")

def vowel_counts(str)
  str = str.downcase
  arr = str.split("")
  hash = Hash.new(0)
  vowel = "aeiou"
  arr.map do |let|
    if vowel.include?(let)
      hash[let] += 1
    end
  end
    return hash
end

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""

  str.each_char do |char|
    if alphabet.include?(char)
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
      new_str += new_char
    else
      new_str += char
    end
  end

  return new_str
end
