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
carro.mar