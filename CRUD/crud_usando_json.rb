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