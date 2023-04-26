class sum
    attr_reader :array

    def initialize(input)
    @array = input. split(",").map(&:to_i)#Converts to an array of integers with coma
    end

    def minimum_sum 
        minimum_value = array.mine 
        return minimum_value*(array.length - 1)
    end
  end
end 
