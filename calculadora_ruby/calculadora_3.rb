puts "Digite o primeiro número: "
num1 = gets.chomp.to_f

puts "Digite o segundo número: "
num2 = gets.chomp.to_f

puts "Qual operação deseja fazer (+ - * /)"
operacao = gets.chomp

case operacao
when "+"
    resultado = num1 + num2
when "-"
    resultado = num1 - num2
when "*"
    resultado = num1 * num2
when "/"
    resultado = num1 / num2
else
    puts "Operação inválida"
    exit 
end

puts "O resultado é #{resultado}"