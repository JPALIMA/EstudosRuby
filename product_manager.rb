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
    product = Product.new(name, description, price, quantity)
    @products << product
    product
  end

  def list_products
    @products
  end

  def find_product(product_id)
    @products.find { |product| product.id == product_id}
  end

  def update_product(product_id, name, description, price, quantity)
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
product_manager.add_product('produto 1', 'Descrição do Produto 1', 10.10, 100)
product_manager.add_product('produto 2', 'Descrição do produto 2', 19.00, 50)

#Listar produto
products = product_manager.list_products
products.each do |product|
  puts "ID: #{product.id}, Nome: #{product.name}, Descrição: #{product.description}, Preço: #{product.price}
  quantidade: #{product.quantity}"
end

#atualizar produto
product_id = products.fist.id
product_manager.update_product(product_id, 'Novo name', 'Novo Descrição', 15.99, 75)

#Excluir produto
delete_product = product_manager.delete_product(product_id)