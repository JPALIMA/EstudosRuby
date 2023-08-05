require 'json'

class Usuario
    attr_accessor :id, :nome, :email

    def initialize(id, nome, email)
        @id = id
        