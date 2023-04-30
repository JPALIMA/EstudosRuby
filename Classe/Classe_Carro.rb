class Carro 

    attr_accessor :marca, :modelo

    def velocidade_maxima
        250
    end

    def descricao
        "Marca: #{@marca} e Modelo: #{@modelo}"
    end

end

carro = Carro.new
carro.marca = "Ford"
carro.modelo = "forcus"
puts "Marca: " + carro.marca
puts "Modelo: " + carro.modelo
puts "Descricao: " + carro.descricao