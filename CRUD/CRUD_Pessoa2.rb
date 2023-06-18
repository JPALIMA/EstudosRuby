class Pessoa
    attr_accessor :id, :nome, :idade

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
                puts "ID: #{pessoa.id}, Nome: #{pessoa.nome}, Idade: #{pessoa}"
            end
        end
    end

    def buscar_pessoa(id)
        pessoa = @pessoas.find { |p| p.id == id }
        if pessoa.nil?
            puts "Pessoa não encontrada."
        else
            puts "ID: #{pessoa.id}, Nome #{pessoa.nome}, Idade: #{pessoa.id}"
        end
    end

    def atualizar_pessoa(id, nome, idade)
        pessoa = @pessoas.find { |p| p.id == id }
        if pessoa.nil?
            puts "Pessoa não encontrada. "
        else
            pessoa.nome = nome
            pessoa.idade = idade
            puts "Pessoa atualizada com sucesso!"
        end
    end

    def excluir_pessoa(id)
        pessoa = @pessoas.find { |p| p.id == id }
        if pessoa.nil?
        puts "Pessoa não encontrada. "
        else
            @pessoas.delete(pessoa)
            puts "Pessoa excluída com sucesso!"
        end
    end
end

# Exemplo de uso
crud = CrudPessoa.new

crud.criar_pessoa("João", 25)
crud.criar_pessoa("Maria", 30)

crud.listar_pessoas
# Saída:
#ID: 0, Nome: João, Idade: 25
#ID: 1, Nome: Maria, Idade: 30

crud.atualizar_pessoa(0, "João Silva", 26)

crud.listar_pessoas
#Saída atualizada:
#ID: 0, Nome: João Silva, Idade: 26
#ID: 1, Nome: Maria, Idade: 30

crud.buscar_pessoa(1)
#Saída:
#ID: 1, Nome: Maria, Idade: 30