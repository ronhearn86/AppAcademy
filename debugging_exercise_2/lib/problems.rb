# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.



def largest_prime_factor(num)
    track = 0
    (num).downto(2).each do |factor|
        
        if num % factor == 0 && prime?(factor)
            return factor
        end
    end
    
end

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

require "byebug"

def unique_chars?(str)
    hash = Hash.new(0)
    str.each_char {|c| hash[c] += 1}
    hash.each do |k, v|
        if v == 2
            return false
        end    
    end
    return true
end

def dupe_indices(array)
    indices = Hash.new { |h, k| h[k] = [] }
    array.each_with_index { |ele, i| indices[ele] << i }
    indices.select { |ele, indices| indices.length > 1 }
end

def ele_count(arr)
    count = Hash.new(0)

    arr.each { |ele| count[ele] += 1 }

    count
end

def ana_array(arr_1, arr_2)
    count_1 = ele_count(arr_1)
    count_2 = ele_count(arr_2)
    count_1 == count_2
end