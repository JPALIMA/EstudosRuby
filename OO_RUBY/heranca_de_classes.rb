class Animal
    def initialize(nome)
        @nome = nome
    end

    def fazer_barulho
        puts "O animal está fazendo barulho!"
    end
end

#Classe Cachorro herda de Animal
class Cachorro < Animal
    def fazer_bagulho
        puts "O cachorro está latindo!"
    end
end

#Classe Gato herda de Animal
class Gato < Animal
    def fazer_bagulho
        puts "O gato está miando!"
    end
end

#Criando objetos das classes Cachorro e Gato
cachorro = Cachorro.new("Rex")
gato = Gato.new("Mimi")

#Chamando o método para fazer barulho
cachorro.fazer_barulho
gato.fazer_barulho