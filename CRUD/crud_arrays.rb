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
        @products.find { |product| product.id == id }
    end

    def update(id, name, price)
        product = find(id)
        return false unless product

        product.name = name
        product.price = price
        true
    end

    def delete(id)
        product = find(id)
        return false unless product

        @products.delete(product)
        true
    end

    def all
        @products
    end
end

#Exemplo de uso
manager = ProductManager.new

product1 = manager.create("Produto 1", 10.99)
puts product1

product2 =  manager.find(1)
puts product2

manager.update(1, "Novo Produto 1", 19.99)

manager.delete(1)

manager.all.each do |product|
    puts product
end

