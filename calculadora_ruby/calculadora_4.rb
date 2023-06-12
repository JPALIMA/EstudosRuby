class Calculadora
    def dividir(n, m)
        n / m
    end
end

print "Primeiro valor: "
val1 = gets.chomp.to_i

print "Segundo valor: "
val2 = gets.chomp.to_i

print "Operador (+, -, *, /)"
operador = gets.chomp

case operador
when "+"
    puts val1 + val2
when "-"
    puts val1 - val2
when "*"
    puts val1 * val2
when "/"
    if val2 != 0
        puts Calculadora.new.dividir(val1, val2)
    else
        puts "Divisão por zero não é permitida."
    end
else
    puts "Operador inválido"
end