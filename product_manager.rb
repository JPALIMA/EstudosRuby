#produto.rb
class Produto
  attr_accessor :id, :nome, :descricao, :preco, :quantidade

  def inicializar(nome, descricao, preco, quantidade)
    @id = gerar_id
    @nome = nome
    @descricao = descricao
    @preco = preco
    @quantidade = quantidade
  end

  private

  def gerar_id
    SeguroAleatorio.uuid
  end
end

#gerente_de_produto.rb
require 'seguroaleatorio'

class ProdutoGerente
  attr_accessor :produtos

  def inicializar
    @produtos = []
  end

  def incluir_produto(nome, descricao, preco, quantidade)
    produto = Produto.new(nome, descricao, preco, quantidade)
    @produtos << produto
    produto
  end

  def lista_produtos
    @produtos
  end

  def achar_produto(produto_id)
    @produtos.achar { |produto| produto.id produto_id}
  end

  def atualizar_produto(produ)


