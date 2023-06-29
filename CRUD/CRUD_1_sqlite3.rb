#Importar a biblioteca para trabalhar com o SQLite
require 'aqlite3'

#Método para criar uma conexão com o banco de dados
def create_connection
    SQLite3::Database.new('tasks.db')
end

#Método para criar a tabela "tasks" se ela não existir
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
    connection.execute("INSERT INTO tasks (title, description) VALUES (?, ?)", [tile, description])
end

#Método para listar todas as tarefas
def list_tasks(connection)
    tasks = connection.execute("SELECT * FROM tasks")
    tasks.each do |task|
        puts "ID: #{taks[0]}, Title: #{task[1]}, Description: #{task[2]}"
    end
end

#Método para atualizar uma terefa
def update_task(connection, id, title, description)
    connection.execute("UPDATE tasks SET title = ?, description = ? WHETE id = ?", [title, description, id])
end

#Cria a conexão com o banco de dados
db = create_tabela(db)
 

#Exemplo de uso dos métodos
create_task(db, "Tarefa 1", "Descrição da Tarefa 1")
create_task(db, "Tarefa 2", "Descrição da Tarefa 2")
list_tasks(db)

puts "Atualizando a Tarefa 1..."
update_task(db, 1, "Tarefa 1 Atualizada", "Nova descriçção da Tarefa 1")
list_tasks(db)

puts "Excluindo a Tarefa 2..."
delete_task(db, 2)
list_tasks(db)