require 'sqlite3'

begin
    db = SQLite3::Database.open "test.db"
    db.execute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY, Name TEXT, Price INT)"

    #Função para verificar se um registro com o mesmo Id já existe na tabela Cars
    def exists?(db, id)
        query = db.execute("SELECT EXISTS(SELECT 1 FROM Cars WHERE Id = ? LIMIT 1)", id)
        query.first.first == 1
    end

    #Inserir registros apenas se não existirem na tabela
    db.execute "INSERT INTO Cars VALUES(1, 'Audi', 52642)" unless exists?(db, 1)
    db.execute "INSERT INTO Cars VALUES(2, 'Mercedes', 57127)" unless exists?(db, 2)
    db.execute "INSERT INTO Cars VALUES(3, 'Skoda', 9000" unless exists?(db, 3)
    db.execute "INSERT INTO Cars VALUES(4, 'Volvo', 29000)" unless exists?(db, 4)
    db.execute "INSERT INTO Cars VALUES(5, 'Bentley', 350000)" unless exists?(db, 5)
    db.execute "INSERT INTO Cars VALUES(6, 'Citroen', 21000)" unless exists?(db, 6)
    db.execute "INSERT INTO Cars VALUES(7, 'Hummer', 414000)" unless exists?(db, 7)
    db.execute "INSERT INTO Cars VALUES(8, 'Volkswagen', 21600)" unless exists?(db, 8)
rescue SQLite3::Exception => e
    puts "Exception occurred"
    puts e
ensure
    db.close if db
end