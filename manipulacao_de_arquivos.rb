#Leitura de arquivo
file = File.open("arquivo.txt", "r")
contents = file.read
file.close 

puts contents #exemplo de uso: lê o conteúdo de um arquivo de texto

#Escrita em arquivo
file = File.open("arquivo.txt", "w")
file.write("Conteúdo do arquivo.")
file.close

#Adição ao final de um arquivo
file = File.open("arquivo.txt", "a")
file.write("Novo conteúdo.")
file.close
