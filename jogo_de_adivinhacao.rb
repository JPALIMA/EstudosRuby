numero = rand(1..100)
tentativas = 0

puts "Bem-vindo do jogo de adivinhação!"
puts "Tente adivinhar um número entre 1 e 100"

loop do
    tentativas += 1
    palpite = gets.chomp.to_i

    if palpite == numero
        puts "Parabéns! Você acertou em #{tentativas} tentativas."
        break 
    elsif palpite < numero 
        puts "O numero é maior que #{palpite}. Tente Novamente."
    else
        puts "O número é menor que #{palpite}. Tente novamente"
    end
end

