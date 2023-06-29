class Product
    attr_accessor :id, :name, :price

    def initialize(id, name, price)
        @id = id
        @name = name
        @price = price
    end
end

class ProductManeger
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
maneger = ProductManeger.new

#Criar um novo produto
product1 = maneger.create("Produto 1", 10.99)
puts product1.inspect

#Encontrar um produto por ID
product2 = maneger.find(1)
puts product2.inspect

#Autalizar um produto
maneger.update(1, "Novo Produto 1", 19.99)

#Deletar um produto
maneger.delete(1)

#Obter todos os produtos
puts maneger.all.inspect