def is_palindrome?(string)
    string == string.reverse
end

puts is_palindrome?("racecar") #true
puts is_palindrome?("hello") #false