require 'json'

class Usuario
    attr_accessor :id, :name, :email

    def initialize(id, name, email)
        @id = id
        @name = name
        @email = email
    end
end

class UserRepository
    def initialize(caminho_arquivo)
        @caminho_arquivo = caminho_arquivo
        @usuarios = carregar_usuarios || []
        @proximo_id = calcular_proximo_id
    end

    def criar(nome, email)
        usuario = Usuario.new(@proximo_id, nome, email)
        @usuarios << usuario
        @proximo_id += 1
        salvar_usuarios
        usuario
    end

    def encontrar(id)
        @usuarios.find { |usuario| usuario.id == id }
    end

    def atualizar(id, nome, email)
        usuario = encontrar(id)
        return nil unless usuario

        usuario.name = nome
        usuario.email = email
        salvar_usuarios
        usuario
    end

    def excluir(id)
        usuario = encontrar(id)
        return nil unless usuario

        @usuarios.delete(usuario)
        salvar_usuarios
        usuario
    end

    def todos
        @usuarios
    end

    def carregar_usuarios
        return nil unless File.exist?(@caminho_arquivo)

        dados = File.read(@caminho_arquivo)
        dados_usuarios = JSON.parse(dados)
        dados_usuarios.map { |usuario| Usuario.new(usuario['id'], usuario['name'], usuario['email']) }
    end

    def calcular_proximo_id
        return 1 if @usuarios.empty?

        maior_id = @usuarios.map(&:id).compact.max
        maior_id ? maior_id + 1 : 1
    end

    def salvar_usuarios
        dados = @usuarios.map { |usuario| {id: usuario.id, name: usuario.name, email: usuario.email}}
        File.write(@caminho_arquivo, JSON.generate(dados))
    end
end

#exemplo de uso
repositorio_usuario = UserRepository.new('usuarios.json')

usuario1 = repositorio_usuario.criar('joaozianho', 'joaozinho@exemplo.com')
usuario2 = repositorio_usuario.criar('joao', 'joao@exemplo.com')

puts usuario1.name #Salvar: joaozinho
puts usuario2.email #Saida: joao@exemplo.com

repositorio_usuario.excluir(usuario2.id)
puts repositorio_usuario.todos.length #Saída: 1