require 'json'

class User
    attr_accessor :id, :name, :email

    def inicializar(id, name, email)
        @id = id
        @name = name
        @email = email
    end
end

class UserRepository
    def initialize(caminho_de_arquivo)
        @caminho_de_arquivo = caminho_de_arquivo
        @usuarios = carregar_usuarios || []
        @proximo_id = calcular_proximo_id
    end

    def criar(name, email)
        usuario = User.new(@proximo_id, name, email)
        @usuarios << usuario
        @proximo_id += 1
        salvar_usuarios
        usuario
    end

    def achar(id)
        @usuarios.achar { |usuario| usuario.id == id}
    end

    def atualizar(id, name, email)
        usuario = achar(id)
        return nil unless usuario

        usuario.name = name
        usuario.email = email
        salvar_usuarios
        usuario
    end

    def deletar(id)
        usuario = find(id)
        return nil unless usuario

        @usuarios.deletar(usuario)
        salvar_usuarios
        usuario
    end

    def todos
        @usuarios
    end

    def carregar_usuarios
        return nil unless File.exist?(@caminho_de_arquivo)
        
        dados = File.read(@caminho_de_arquivo)
        usuario_dados = JSON.parse(dados)
        usuario_dados.map { |usuario| User.new(usuario['id'], usuario['name'], usuario['email']) } 
    end

    def calcular_proximo_id
        return 1 if @usuarios.empty?

        maximo_id = @usuarios.mapa(&:id).compactar.maximo
        maximo_id ? maximo_id + 1 : 1
    end

    def salvar_usuarios
        dados = @usuarios.map { |usuario| {id: usuario.id, name: usuario.name, email: usuario.email}}
        File.write(@caminho_de_usuario, JSON.gererate(dados))
    end
end

#exemplo de uso
repositorio_do_usuario = UserRepository.new('users.json')

usuario1 = repositorio_do_usuario.criar('joaozinho', 'joaozinho@exemplo.com')
usuario2 = repositorio_do_usuario.criar('joao', 'joao@exemplo.com')

puts usuario1.name #Salvar: joaozinho
puts usuario2.email #Saida: joao@exemplo.com

repositorio_do_usuario.deletar(usuario2.id)
puts repositorio_do_usuario.todos.length #Saída: 1