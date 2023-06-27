#Importar a biblioteca para trabalhar com o SQLite
require 'sqlite3'

#Método para criar uma conexão com o banco de dados
def create_connection
    SQLite3::Database.new('tasks.db')
end

# Método para criar a tabela "tasks" se ela não existir
def create_tabela(connection)
    connection.execute <<-SQL
    CREATE TABLE IF NOT EXISTS tasks (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        description TEXT
        );
    SQL
end

#Método para criar uma nova tarefa
def create_task(connection, title, description)
    connection.execute("INSERT INTO tasks (title, description) VALUES (?, ?)", [title, description])
end

#Método para listar todas as tarefas
def list_tasks(connection)
    tasks = connection.execute("SELECT * FROM tasks")
    tasks.each do |task|
        puts "ID: #{task[0]}, Title: #{task[1]}, Description: #{task[2]}"
    end
end

#Método para excluir uma tarefa
def delete_task(connection, id)
    connection.execute("DELETE FROM tasks WHERE id = ?", [id])
end

#Cria a conexão com o banco de dados
db = create_connection

#Cria a tabela "tasks" se ela não existir
create_table(db)

# exemplo de uso dos métodos
create_table(db)
