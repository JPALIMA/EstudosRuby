require 'json'

class User
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
        usuario = User.new(@proximo_id, nome, email)
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
        dados_usuarios.map { |usuario| User.new(usuario['id']), usuario['name'], usuario['email']}
    end

    def calcular_proximo_id
        return 1 if @usuarios.empty?

        maior_id = @usuarios.map(&:id).compact.max
        maior_id ? maior_id + 1 : 1
    end

    