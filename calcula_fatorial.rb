def fatorial(n)
    if n == 0
        1
    else
        n * fatorial(n-1)
    end
end

puts fatorial(5) # Exemplo de uso: calcula o fatorial de 5