tasks = []
loop do 
    puts "Digite uma tarefa para adicionar à lista (ou 'exit' para sair): "
    input = gets.chomp 

    break if input == 'exit'

    tasks << input
    puts "Tarefa adicionado à lista."
end

puts "Lista de tarefas: "
tasks.each_with.index do |task, index|
    puts "#{index+1}.#{task}"
end