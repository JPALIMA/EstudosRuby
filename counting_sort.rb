def counting_sort(array)
    counters = Array.new(array.max + 1, 0)
    array.each { |e| counters[e] += 1}

    result = Array.new(array.size)
    1 = 0
    counters.size.times do |number|
        counters[number].times do
            result[i] = number
            i += 1
        end
    end

    result
end