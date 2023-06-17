class Pessoa
    attr_acessor :id, :nome, :idade

    def initialize(id, nome, idade)
        @id = id
        @nome = nome
        @idade = idade
    end
end

class CrudPessoa
    def initialize
        @pessoas = []
        @id_counter = 0
    end

    def criar_pessoa(nome, idade)
        pessoa = Pessoa.new(@id_counter, nome, idade)
        @pessoas << pessoa
        @id_counter += 1
        puts "Pessoa criada com sucesso!"
    end

    def listar_pessoas
        if @pessoas.empty?
            puts "Não há pessoas cadastradas."
        else
            @pessoas.each do |pessoa|
                puts "ID: #{pessoa.id}, Nome: #{pessoa.nome}, Idade: #{pessoa.idade}"
            end
        end
    end