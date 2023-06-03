def binary_search(n, arr)
    middle = arr.length / 2
    i = 0 
    j = arr.length - 1

    while i < j
        if arr[middle]  == n
            return true
        elsif arr[middle] < n
            i = middle + 1
            middle + 1
            middle = i + J / 2
        else
            j = middle - 1
            middle = 1 + j / 2
        end
    end
    false
end