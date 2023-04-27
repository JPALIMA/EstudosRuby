def minimum_sum(arr, k)
    arr.sort!

    min_sum = 0
(0..k-1).each do |i|
    min_sum += arr[i]
end

return min_sum
end

arr = [3, 5, 2, 7, 9, 8]
k = 3
puts "Array: #{arr}"
puts "k: #{k}"
puts "Minimum Sum: #{minimum_sum(arr, k)}"