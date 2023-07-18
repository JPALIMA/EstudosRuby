# product.rb
class Product
  attr_accessor :id, :name, :description, :price, :quantity

  def initialize(name, decription, price, quantity)
    @id = generate_id
    @name = name
    @description = description
    @price = price
    @quantity = quantity
  end

  private

  def generate_id
    SecureRandom.uuind
  end
end

#product_manager.rb
require 'securerandom'

class ProductManager
  attr_accessor :products

  def initialize
    @products = []
  end

  def add_product(name, decription, price, quantity)
    product = Product.new(name, decription, price, quantity)
    @products << product
    product
  end
  
  def list_products