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
    def initialzize
        @pessoa = []
    end

    def criar_pessoa(nome, idade)
        id = @pessoas.length
        pessoa = Pessoa.new(id, nome, idade)
        @pessoas << pessoa
    end
    
def lista_pessoa
    @pessoa.each do |pessoa|
        puts pessoa
    end
end


