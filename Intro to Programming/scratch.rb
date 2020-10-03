
def to_initials(name)
  parts = name.split(" ")
  intials = ""
  parts.each { |part| initials = initials + part[0] }
  return initials

end

print to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # +> "MLG"
