class Pessoa
    attr_accessor :nome, :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end
end

class CrudPessoa
    def initialize
        @pessoas = []
    end

    def criar_pessoa(nome, idade)
        pessoa = Pessoa.new(nome, idade)
        @pessoas << pessoa
        puts "Pessoa criada com sucesso!"
    end

    def listar_pessoas
        if @pessoas.empty?
            puts "Não há pessoas cadastradas."
        else
            @pessoas.each do |pessoa|
                puts "Nome: #{pessoa.nome}, Idade: #{pessoa.idade}"
            end
        end
    end

    def atualizar_pessoa(nome, nova_idade)
        pessoa = @pessoas.find { |p| p.nome == nome }
        if pessoa.nil?
            puts "Pesssoa não encontrada."
        else
            pessoa.idade = nova_idade
            puts "Pessoa atualizada com sucesso!"
        end
    end
    