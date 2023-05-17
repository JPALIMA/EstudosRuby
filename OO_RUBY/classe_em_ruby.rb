class Pessoa
    attr_accessor :nome, :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def saudacao
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos. "
    end
end

pessoa = Pessoa.new("João", 25)
pessoa.saudacao #Exemplo de uso: cria um ojetivo Pessoa e chama o método saudacao