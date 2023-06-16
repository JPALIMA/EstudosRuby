tasks = []

look do 
    puts "Digite uma tarefa para adicionar à lista (ou 'exit' para sair);"
    input = gets.chomp

    break if input == 'exit'

    tasks << input
    puts "Tarefa acionada à lista."
end

puts "Lista de tarefas:"
tasks.each_with_index do |task, index|
    puts "#{index+1}. #{task}"