class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def mostrar_informacoes
        puts "Nome: #{@nome}"
        puts "Idade: #{@idade}"
    end
end

# criando um objeto da classe Pessoa
pessoa = Pessoa.new("João", 25)

#Chamada o método para mostrar as informações
pessoa.mostrar_informacoes