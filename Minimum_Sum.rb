def minimum_sum(arr, k)
    arr.sort!

min_sum = 0
(0..k-1).each do |i|
min_sum += arr[i]
end 


