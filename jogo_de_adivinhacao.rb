numero = rand(1..100)
tentativas = 0 

puts "Bem-vindo ao jogo de adivinhação! "
puts "Tente adivinhar um número entre 1 e 100"

loop do 
    tentantivas += 1
    palpite = gets.chomp.to_i 

    if palpite == numero
        puts "Parabéns! Você acertou em #{tentativas} tentativas."
        break
    elsif palpite < numero
        puts "O número é maior que #{palpite}. Tente novamente."
    end
end
