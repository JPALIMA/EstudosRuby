tasks = []

loop do 
    puts "Digite uma tarefa para adicionar à lista (ou 'exite' para sair): "
    input = gets.chomp

    break if input == 'exit'

    tasks << input
    puts "Tarefa adicionada à lista. "
end

puts "Lista de tarefas:"
tasks.each_with_index do |task,index|
    puts "#{index+1}. #{task}"
end