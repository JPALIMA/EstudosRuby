#Leitura de arquivo
file.clos:error

puts contents #exemplo de uso: lê o conteúdo de um arquivo de texto

#Escrita de arquivo
file = File.open("arquivo.txt", "w")
file.write("conteúdo do arquivo.")
file.close

#Adição ao final de um arquivo
file = File.open("arquivo.txt", "a")
file.write("Novo conteúdo.")
file.close