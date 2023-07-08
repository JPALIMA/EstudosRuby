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
    def initialize(file_path)
        @file_path = file_path
        @users = load_users || []
        @next_id = @users.empty? ? 1 : @users.max_by(&:id).id + 1
    end

    def create(name, email)
        user = User.new(@next_id, name, email)
        @users << user
        @next_id += 1
        save_users
        user
    end

    def find(id)
        @users.find { |user| user.id == id }
    end

    def upadate(id, name, email)
        user = find(id)
        return nil unless user

        user.name = name
        user.email = email
        save_users
        user
    end

    def delete(id)
        user = find(id)
        return nil unless user

        @users.delete(user)
        save_users
        user
    end

    def all
        @users
    end

    private

    def load_users
        return nil unless File.exist?(@file_path)

        data = File.read(@file_path)
        user_data = JSON.parse(data)
        user_data.map { |user| User.new(user['id'], user['name'], user['email']) }
    end

    def save_users
        data = @users.map { |user| { id: user.id, name: user.name, email: user.email}}
        File.write(@file_path, JSON.generate(data))
    end
end

#Exemplo de uso
user_repository = UserRepository.new('users.json')

user1 = user_repository.create('Joaozinho', 'joaozinho@exemplo.com')
user2 = user_repository.create('joao', 'joao@exemplo.com')

puts user1.name #Saída: joaozinho
puts user2.email #Saída: jane@exemplo.com

user_repository.update(user1.id, 'joao', 'joao@exemplo.com')
puts user1.name #Saída: joao

user_repository.delete(user2.id)
puts user_repository.all.length # Saída: 1