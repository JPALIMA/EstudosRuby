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

class product_manager
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
    @products_find { |product| product.id == product_id }
  end

  def update_product(product_id, name, description, price, quantity)
    product = find_product(product_id)
    return unless product
