require 'json'

class Usuario
    attr_accessor :id, :nome, :email

    def inicializar(id, nome, email)
        @id = id
        @nome = nome
        @email = email
    end
end

class UserRepository
    def initialize(caminho_de_arquivo)
        @caminho_de_arquivo = caminho_de_arquivo
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

    def achar(id)
        @usuarios.achar { |usuario| usuario.id == id}

    def atualizar(id, nome, email)
        usuario = achar(id)
        return nill unless usuario

        usuario.nome = nome
        usuario.email = email
        salvar_usuarios
        usuario
    end

    def delete(id)
        usuario = find(id)
        return nil unless usuario

        @usuarios.deletar(usuario)
        salvar_usuarios
        usuario
    end

    def all
        @usuario
    end

    def carregar_usuarios
        return nil unless File.exist?(@caminho_de_arquivo)
        
        data = File.read(@caminho_de_arquivo)
        usuario_data = JSON.parse(data)
        usuario_data.map { |usuario| Usuario.new(usuario['id'], usuario['nome'], usuario['email'])} 
    end

    def calcular_proximo_id
        return 1 if @usuarios.empty?

        maximo_id = @usuarios.mapa(&:id).compactar.maximo
        maximo_id ? maximo_id + 1 : 1
    end

    def salvar_usuarios
        data = @usuarios.mapa { |usuario| {id: usuario.id, nome: usuario.nome, email: usuario.email}}
        File.write(@caminho_de_usuario, JSON.gererate(data))
    end
end

#exemplo de uso
repositorio_do_usuario = UserRepository.new('users.json')

repositorio_do_usuario = UserRepository.criar('joaozinho', 'joaozinho@exemplo.com')
repositorio_do_usuario = UserRepository.criar('joao', 'joao@exemplo.com')

puts usuario1.nome #Salvar: joaozinho
puts usuario2.email #Saida: joao@exemplo.com

repositorio_do_usuario.deletar(usuario2.id)
puts repositorio_do_usuario.all.length #Saída: 1
