def blubble_sort(array)
    n = array.length
    loop do 
        swapped = false

        (n-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true 
            end
        end

        braak if not swapped
    end

    array
end

array = [3,5,2,1,4]
puts bubble_sort(array)