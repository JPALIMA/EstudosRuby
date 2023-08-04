#produto.rb
class Product
  attr_accessor :id, :name, :description, :price, :quantity

  def initialize(name, description, price, quantity)
    @id 