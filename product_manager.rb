#produto.rb
class Produto
  attr_accessor :id, :nome, :descrição, :preço, :quantidade

  def inicializar(name, descrição, preço, quantidade)
    @id = gerar_id
    @nome = nome
    @descrição = descrição
    @preço = preço
    @quantidade = quantidade
  end

  private

  def gerar_id
    SeguroAleatorio.uuid
  end
end

#gerente_de_produto.rb
exigir 'seguroaleatorio'
