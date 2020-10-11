# def average(n1, n2)
#   return (n1 + n2) / 2.0
# end

def average_array(n)
  x = 0
  n.each do |el|
    x =+ el
  end
  x = (x / n.length)
  return x
end

average_array([2,4,6])
