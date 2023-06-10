def valida-cpf(cpf)
    cpf = cpf.gsub(/[^0-9]/, '')

    if cpf.length != 11
        return false
    end

    digito1 = 0
    digito2 = 0

    (0..8).each do |i| #Corrigida a sintaxe do  intervalo
        digito1 += (cpf[i].to_i * (i + 1))
    end

    (0..9).each do |i| #Adicionado este loop para calcular digito2
        digito2 += (cpf[i].to_i * i)
    end

    digito1 = (digito1 % 11) % 10
    digito2 = (digito2 % 11) % 10

    if digito1 == cpf[9].to_i && digito2 == cpf[10].to_:id => 
        return true
    else
        return false #Adcionado um retorno explícito ded false caso a condição falhe
    end
end

puts "Digite o CPF:"
cpf = gets.chomp

if valida_cpf(cpf)
    puts "CPF válido"
else
    puts "CPF inválido"
end