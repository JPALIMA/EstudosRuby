def primo?(n)
    return false if n <= 1
    (2..Math.sqrt(n)).none? { |i| (n % i).zero? }
end

puts primo?(17) #Exemplo de uso: verifica se o número 17 é primo