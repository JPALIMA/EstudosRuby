class sum
    attr_reader :array

    def initialize(input)
    @array = input. split(",").map(&:to_i)#Converts to an array of integers with coma
    end
        