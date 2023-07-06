class User
    attr_accessor :id, :name, :email

    def initialize(id, name, email)
        @id = id
        @name = name
        @email = email
    end
end

class UserRepository
    def initialize
        @users = []
        @next_id = 1
    end

    def create(name, email)
        user = User.new(@next_id, name, email)
        @users << user
        @next_id += 1
        user
    end

    def find(id)
        @users.find { |user| user.id = id }
    end

    def update(id, name, email)
        user = find(id)
        return nil unless user

        user.name = name
        user.email = email
        user 
    end

    def delete(id)
        user = find(id)
        return nil unless user

        @users.delete(user)
        user 
    end

    def all
        @users
    end
end

#Exemplo de uso
user_repository = UserRepository.new

user1 = user_repository.create('Joaozinho', 'joaozinho@exemplo.com')
user2 = user_repository.create('Joana', 'joana@exemplo.com')

puts user1.name # Saída: joao
puts user2.email #Saída: joana@exemplo.com

user_repository.update(user1.id, 'joao', 'joao@exemplo.com')
puts user1.name #Saída: Joao

user_repository.delete(user2.id)
puts user_repository.all.length #Saída: 1



