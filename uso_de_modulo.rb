module Matematica
    PI = 3.1416 

    def self.dobro(numero)
        numero * 2
    end

    def self.raiz_quadrada(numero)
        Math.sqrt(numero)
    end
end

puts Matematica::PI
puts Matematica.dobro(5)
puts Matematica.raiz_quadrada(16)