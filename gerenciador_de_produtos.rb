#produto.rb
class Produto
  attr_accessor :id, :nome, :descricao, :preco, :quantidade

  def initialize(nome, descricao, preco, quantidade)
    @id = gerar_id
    @nome = nome
    @descricao = descricao
    @preco = preco
    @quantidade = quantidade
  end

  private

  def gerar_id
    SecureRandom.uuid
  end
end

#gerenaciador_de_produtos
  require 'securerandom'

  class GerenciadorDeProdutos
    attr_accessor :produtos

  def initialize
    @produtos = []
  end

  def adicionar_produto(nome, descricao, preco, quantidade)
    produto = Produto.new(nome, descricao, preco, quantidade)
    @produtos << produto
    produto
  end

  def listar_produtos
    @produtos
  end

  def encontrar_produto(id_do_produto)
    @produtos.find { |produto| produto.id == id_do_produto}
  end

  def atualizar_produto(id_do_produto, nome, descricao, preco, quantidade)
    produto = encontrar_produto(id_do_produto)
    return unless produto

    produto.nome = nome
    produto.descricao = descricao
    produto.quantidade = quantidade
    produto
  end

  def excluir_produto(id_do_produto)
    produto = encontrar_produto(id_do_produto)
    return unless produto

    @produtos.delete(produto)
    produto
  end
end

#main.rb
require_relative 'gerenciador_de_produtos'

gerenciador_de_produtos = GerenciadorDeProdutos.new

#adicionar produtos
gerenciador_de_produtos.adicionar_produto('Produto 1', 'Descrição do Produto 1', 10.10, 100)
gerenciador_de_produtos.adicionar_produto('Produto 2', 'Descrição do Produto 2', 19.00, 50)

#Listar produtos
produtos = gerenciador_de_produtos.listar_produtos
produtos.each do |produto|
  puts "ID: #{produto.id}, Nome: #{produto.nome}, Descricao: #{produto.descricao}, preço: #{produto.preco},
  Quantidade: #{produto.quantidade}"
end

#atualizar produto
id_do_produto = produtos.first.id
gerenciador_de_produtos.atualizar_produto(id_do_produto, 'Novo nome', 'Nova Descrição', 15.99, 75)

#Excluir produto
produto_excluido = gerenciador_de_produtos.excluir_produto(id_do_produto)