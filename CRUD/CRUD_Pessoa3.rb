class Pessoa
    attr_accessor :id, :nome, :idade
    
    def initialize(id, nome, idade)
        @id = id
        @nome = nome
        @idade = idade
    end

    def to_s
        "ID: #{id}, Nome: #{nome}, Idade: #{idade}"
    end
end

class CrudPessoa
    #Restante do código permanece o mesmo
    #...
end

#Exemplo de uso
crud = CrudPessoa.new

crud.criar_pessoa("João", 25)
crud.criar_pessoa("Maria", 30)

crud.listar_pessoas
#Saída:
#ID: 0, Nome: João, Idade: 25
#ID: 1, Nome: Maria, Idade: 30

crud.atualizar_pessoa(0, "João Silva", 26)

crud.listar_pessoas
#Saída Atualizada:
#ID: 0, Nome: João Silva, Idade: 26
#ID: 1, Nome: Maria, Idade: 30

crud.buscar_pessoa(1)
#Saída:
#ID: 1, Nome: Maria, Idade: 30