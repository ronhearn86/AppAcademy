# nested loops
(1..3).each do |num1|
  puts num1
  (1..5).each do |num2|
    puts "     " + num2.to_s
  end
end


arr = ["a" ,"b", "c", "d"]

arr.each do |ele|
  arr.each do |ele2|
  puts ele + ele2
end
end
