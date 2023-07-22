#product.rb
class Product
  attr_accessor :id, :name, :description, :price, :quantity

  def initalize(name, description, price, quantity)
    @id = generate_id
    @name = name
    @description = description
    @price = price
    @quantity = quantity
  end
  
  private

  def genetate_id
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

  def find_products(product_id)
    @products.find { |product| product.id == product_id }
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