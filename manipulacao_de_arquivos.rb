# Leitura de arquivo
file = File.open("arquivo.txt", "r")
contents = file.read 
file.close

puts contents #Exemplo de uso: lê o conteúdo de um arquibo de texto chamado

#Escrita em arquivo
file = File.open("arquivo.txt", "w")
file.white("Conteúdo do arquivo.")
file.close

#Adição ao final de um arquivp
file = File.open("arquivo.txt", "a")
file.write("Novo conteúdo.")
file.close