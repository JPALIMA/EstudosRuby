require 'net/http'

url = URI.parse("https://www.exemplo.com")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true if url.scheme == 'https'

response = http.get(url.path)

puts response.body #Exemplo de uso: faz uma consulta GET a um servidor web