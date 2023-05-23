tasks = []

loop do "Digite uma tarefa para adicionar à lista (ou 'exit' para sair):"
    input = gets.chomp 

    break if input == 'exit'

    tasks << input
    puts "Tarefa aciocionada á lista."
end

puts "Lista de tarefas: "
task.each_with_index do |task, idedex|
    puts  "#{index+1}. #{task}"
end