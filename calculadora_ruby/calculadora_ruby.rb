class Calculadora
    def sumar (n,m)
        n+m
    end

    def restar (m,n)
        n-m
    end

    def multiplicar(n,m)
        n*m
    end

    def
        dividir(n,m)
        n/m
    end
end

print "Primer valor:"
val1 = gets.chomp.to_i

print "Segundo valor:"
val2 = gets.chomp.to_i
  
print "Operador (+,-,*,/):"
operador = gets.chomp

case operador
when "+"
    puts Calculadora.new.sumar(val1,val2)
when "-"
    puts Calculadora.new.restar(val1,val2)
when "*"
    puts Calculadora.new.multiplicar(val1,val2)
when "/"
    puts Calculadora.new.dividir(val1,val2)
else
    puts "Operador inválido"
end 

