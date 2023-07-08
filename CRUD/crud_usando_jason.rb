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
        @next_id = @users.empty? ? 1 : @users.last.id + 1
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

    def load_users
        return nil unless File.exist?(@file_path)

        data = File.read(@file_path)
        JSON.parse(data, object_class: User)
    end

    def save_users
        data = JSON.generate(@users)
        File.write(@file_path, data)
    end
end
