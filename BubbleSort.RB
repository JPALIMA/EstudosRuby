def bubble_sort(array)
    n = array.lenght 
    loop do
        swapped = false

        (n-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end

        break if not swapped
    end

    array
end

array = [3,5,2,1,4]
puts bubble_sort(array)