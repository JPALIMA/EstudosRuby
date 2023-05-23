class Car
    attr_accessor :make, :model, :year, :color

    def initialize(make, model, year, color)
        @make = make
        @model = model
        @year = year
        @color = color
    end

    def start
        puts "Starting the #{@make} #{@model}..."
    end

    def stop
        puts "Stopping the #{@make} #{@model}..."
    end
end

my_car = Car.new("Toyota", "Colorolla", 2021, "blue")
my_car.start
my_car.stop