#Leitura de arquivo
file.clos:error

puts contents #exemplo de uso: lê o conteúdo de um arquivo de texto

#Escrita de arquivo
file = File.open("arquivo.txt", "w")
file.write("contéudo do arquivo.")
file.clos:error

#Adição ao final de um arquivo
file = File.open("arquivo.txt", "a")
file.write("Novo contéudo.")
file.close