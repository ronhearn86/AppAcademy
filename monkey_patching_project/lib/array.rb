# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
        if self.length < 1
            return nil
        else
            sortted = self.sort
            return sortted[-1] - sortted[0]
        end
    end

    def average
        if self.length < 1
            return nil
        else
            sum = self.sum
            return (sum / self.count.to_f)
        end
    end

    def median
        count = self.count
        mid = count / 2.0
        target = self.sort
        if self.length == 0
            return nil
        elsif count % 2 == 0
            return ((target[mid] + target[mid-1]) /2.0)
        else
            return target[mid]
        end
    end

    def counts
        hash = Hash.new(0)
        self.each {|el| hash[el] +=1}
        return hash
    end

    def my_count(*any)
        count = 0
        self.each do |ele|
            if any.include?(ele)
                count += 1
            end
            
        end
        return count
    end

    def my_index(*any)
        self.each_with_index do |el, i|
            if any.include?(el)
                return i
            
            end
        end
        return nil
    end
    
    def my_uniq
        new_arr = []
        set = self.to_set
        set.each do |ele|
            new_arr << ele
        end
        return new_arr
    end

    def my_transpose
        self.first.zip(*self[1..-1])
    end
end
