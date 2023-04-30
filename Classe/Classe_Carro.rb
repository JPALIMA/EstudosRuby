class Automovel 
    def acelera 
        #Aciona injeção eletrônica
        #injeta combustível e etc...
        puts "acelerando automóvel..."
    end
end

class Carro < Automovel
    def acelera
        # verica freios e outras coisas
        #Que o carro especificamente necessita
        puts "Verificando equipamento..."
        super
    end
end
