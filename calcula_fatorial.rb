def fatorial(n)
    if n == 0
        return 1
    else
        return n * fatorial(n-1)
    end
end

puts fatorial(5) #Exibe o fatorial de 5 (120)