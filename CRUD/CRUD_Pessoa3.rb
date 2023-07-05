class Pessoa
    attr_accessor :id, :nome, :idade
  
    def initialize(id, nome, idade)
      @id = id
      @nome = nome
      @idade = idade
    end
  
    def to_s
      "ID: #{@id}, Nome: #{@nome}, Idade: #{@idade}"
    end
  end
  
  class CrudPessoa
    def initialize
      @pessoas = []
    end
  
    def criar_pessoa(nome, idade)
      id = @pessoas.length
      pessoa = Pessoa.new(id, nome, idade)
      @pessoas << pessoa
    end
  
    def listar_pessoas
      @pessoas.each do |pessoa|
        puts pessoa
      end
    end
  
    def atualizar_pessoa(id, novo_nome, nova_idade)
      pessoa = @pessoas.find { |p| p.id == id }
      pessoa.nome = novo_nome
      pessoa.idade = nova_idade
    end
  
    def buscar_pessoa(id)
      pessoa = @pessoas.find { |p| p.id == id }
      puts pessoa
    end
  end
  
  # Exemplo de uso
  crud = CrudPessoa.new
  
  crud.criar_pessoa("João", 25)
  crud.criar_pessoa("Maria", 30)
  
  crud.listar_pessoas
  # Saída:
  # ID: 0, Nome: João, Idade: 25
  # ID: 1, Nome: Maria, Idade: 30
  
  crud.atualizar_pessoa(0, "João Silva", 26)
  
  crud.listar_pessoas
  # Saída Atualizada:
  # ID: 0, Nome: João Silva, Idade: 26
  # ID: 1, Nome: Maria, Idade: 30
  
  crud.buscar_pessoa(1)
  # Saída:
  # ID: 1, Nome: Maria, Idade: 30


  