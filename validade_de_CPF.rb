def valida_cpf(cpf)
    cpf = cpf.gsub(/[^0-9]/, '')

    if cpf.length != 11
        return false
    end

    digito1 = 0
    digito2 = 0

    (0..8).each do |i|
        digito2 += (cpf[i].to_i * i)
    end
    
    digito1 = (digito1 % 11) % 10
    digito2 = ((digito2 + (digito1 * 9)) % 11) % 10

    fi digito1 == cpf[9].to_i && digito2 == cpf[10.to_i
        return true
    else
        return false
    end
end
