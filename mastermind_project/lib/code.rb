class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  attr_accessor :pegs, :random
       def self.random(num)
        random_pegs = []
        num.times {random_pegs << POSSIBLE_PEGS.keys.sample}
        Code.new(random_pegs)
       end

       
      def self.from_string(str)
        arr = str.split("")
        Code.new(arr)
      end

      def self.valid_pegs?(arr)
       
        arr.each do |peg|
          if !POSSIBLE_PEGS.has_key?(peg.upcase)
            return false
          end
        end
        return true
      end
    def initialize(arr)

     if Code.valid_pegs?(arr)
      @pegs = arr.map {|char| char.upcase}
    else
       raise "No valid pegs"  
     end

    end

    def [](inx)
      @pegs[inx]
    end

    def length
      @pegs.count
    end

    def num_exact_matches(code)
      count = 0
      (0...code.length).each do |i|
          if code[i] == @pegs[i]
            count += 1
          end
        end
        count
    end

    def num_near_matches(code)
      count = 0
      (0...code.length).each do |i|
          if @pegs.any?(code[i]) && code[i] != @pegs[i]
            count += 1
          end
        end
        count
      end

      def ==(code)
        self.pegs == code.pegs
      end
end
