class Carro
    attr_accessor :marca, :modelo

    def initialize(marca, modelo)
        @marca = marca
        @modelo = modelo
    end

    def mostrar_informacoes
        puts "Marca: #{@marca}"
        puts "Modelo: #{@modelo}"
    end
end

#Criando um objetivo da classe Carro
carro = Carro.new("Toyota", "Corolla")

#Acessando e modificando atributos
carro.marca = "Honda"
carro.modelo = "Civic"

#Chamado o método para mostrar as informações
carro.mostrar_informacoes