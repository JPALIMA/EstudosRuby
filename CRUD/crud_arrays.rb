class Product
    attr_accessor :id, :name, :price

    def initialize(id, name, price)
        @id = id
        @name = name
        @price = price
    end

    def to_s
        "ID: #{@id}, Name: #{@name}, Price: #{@price}"
    end
end

class ProductManager
    def initialize
        @products = []
        @next_id = 1
    end

    def create(name, price)
        product = Product.new(@next_id, name, price)
        @products << product
        @next_id += 1
        product
    end

    def find(id)
        product = @products.find { |product| product.id === id }
        product&.dup
    end

    def update(id, name, price)
        product = find(id)