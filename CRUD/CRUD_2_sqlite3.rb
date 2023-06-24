require 'sqlite3'

# Função para verificar se um registro com o mesmo ID já existe na tebela Cars
def exists?(db, id)
    query = db.execute("SELECT COUNT(*) FROM Cars WHERE Id = ?", id)
    query.first.first > 0
end

begin
    fb = SQLite3::Database.open "test.db"
    db.excute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY, Name TEXT, Price INT)"

    #Iniciar transação
    db.transaction

    #Inserir registros apenas se não existirem na tabela
    db.execute "INSERT INTO Cars VALUES(1, 'Audi', 52642)" unless exists?(db, 1)
    db.execute "INSERT INTO Cars VALUES(2, 'Mercedes', 57127)" unless exists?(db, 2)
    db.execute "INSERT INTO Cars VALUES(3, 'Skoda', 9000)" unless exists?(db, 3)
    db.execute "INSERT INTO Cars VALUES(4, 'Volvo', 29000)" unless exists?(db, 4)
    db.execute "INSERT INTO Cars VALUES(5, 'Bentley', 350000)" unless exists?(db, 5)
    db.execute "INSERT INTO Cars VALUES(6, 'Citroen', 21000)" unless exists?(db, 6)
    db.execute "INSERT INTO Cars VALUES(7, 'Hummer', 414000)" unless exists?(db, 7)
    db.execute "INSERT INTO Cars VALUES(8, 'Volkswagen', 21600)" unless exists?(db, 8)

    #Finalizar transação
    db.commit
rescue SQLite3::Exception => e
    puts "Exception occurred"
    puts e
    db.rollback if db #Desfazer transação em caso de exceção
ensure
    db.close if db
end
