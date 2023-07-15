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
        @next_id = calculate_next_id
    end

    def create(name, email)
        user = User.new(@next_id, name, email)
        @users << user
        @next_id += 1
        save_users
        user
    end

    def find(id)
        @users.find { |user| user.id == id}
    end

    def update(id, name, email)
        user = find(id)
        return nil unless user

        user.name = name
        