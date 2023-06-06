    def dividir(n,m)
        n/m
    end
end

print "Primeiro valor:"
val1 = gets.chom.to_i

print "Segundo valor:"
val2 = gets.chomp_i

print "Operador (+,-,*,/):"
operador = gets.chomp

case operador
when "+"
    puts Calculadora.new.sumar(val1, val2)
when "-"
    puts Calculadora.new.restar(val1, val2)
when "*"
    puts Calculadora.new.multiplicar(val1, val2)
when "/"
    puts Calculadora.new.dividir(val1, val2)
else
    puts "Operador inválido"
end
