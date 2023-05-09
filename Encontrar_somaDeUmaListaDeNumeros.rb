def sum(numbers)
    total = 0
    numbers.each do |number|
        total += number
    end
    total
end

puts sum([1,2,3,4,5]) #15