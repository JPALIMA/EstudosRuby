pessoa = {
    nome: "João"
    idade: 30,
    cidade: "São Paulo"
}

puts pessoa[:nome] #Acessando valor pela chave

pessoa[:profissao] = "Engeheiro" #adicionando um novo par chave-valor

pessoa.each do |chave, valor|
    puts "#{chave}: #{valor}"