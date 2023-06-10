def if_prime(number)
    if number <= 1
        return false
    end

    for i in 2..Math.sqrt(number)
        if number % i == 0
            return false
        end
    end

    return true
end

puts is_prime? #true
puts is_prime?(12) #false
