def minimum_sum(arr, k)
  arr.sort!
  
  #Inicializa a soma mínima
  min_sum = 0

  #Calcular a some mínima
  (0..k-1).each do |i|
    min_sum +=arr[i]
  end

#Retorna a soma mínima
return min_sum
end

#Exemplo de uso
arr = [3,5,2,7,9,8]
k = 3
puts "Array: #{arr}"
puts "k: #{k}"
puts "Minimum Sum: #{minimum_sum(arr, k)}"