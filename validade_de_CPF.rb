def valida_cpf(cpf)
    cpf = cpf.gsub(/[^0-9]/, '')

    if cpf.lenght != 11
        return false
    end

