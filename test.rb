def palindrome?(str)
  l = str.length
  h = l / 2
  f = str[0...h]
  e = str[h..-1]
  e.each_char
  print f
  puts
  print e
end

palindrome?("abba")
