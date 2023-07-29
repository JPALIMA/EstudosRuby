#produto.rb
class Product
  attr_accessor :id, :name, :description, :price, :quantity

  def initialize(name, description, price, quantity)
    @id = generate_id
    @name = name
    @description = description
    @price = price
    @quantity = quantity
  end

  private

  def generate_id
    SecureRandom.uuid
  end
end

#product_manager.rb
require 'securerandom'

class ProductManager
  attr_accessor :products

  def initialize
    @products = []
  end

  def add_product(name, description, price, quantity)
    product = find_product(product_id)
    return unless product

    product.name = name
    product.description = description
    product.price = price
    product.quantity = quantity
    product
  end

  def delete_product(product_id)
    product = find_product(product_id)
    return unless product

    @products.delete(product)
    product
  end
end

#main.rb
require_relative 'product_manager'

product_manager = ProductManager.new

#adicionar produtos
product_manager.add_product('produto 1', 'Descrição do Produto 1', 10.00, 100)
product_manager.add_product('produto 2', 'Descrição do Produto 2', 19.99, 50)
