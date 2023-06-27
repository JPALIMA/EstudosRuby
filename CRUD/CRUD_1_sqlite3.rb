#Inportar a biblioteca para trabalhar com o SQLite
require 'sqlite3'

#Cria uma conexão com o banco de dados
db = SQLite3::Database.new('tasks.db')

#Cria a tabela "tasks" se ela não existir
db.execute <<-SQL
    CREATE TABLE IF NOT EXISTS tasks (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        description TEXT
    );
    SQL

    #Método para criar uma nova tarefa
    def create_task(title, description)
        db.execute("INSERT INTO tasks (title, description) VALUES (?, ?)", [title, description])
    end

    #Método para listar todas as tarefas
    def list_tasks
        tasks.each do |task|
            puts "ID: #{task[0]}, Title: #{task[1]}, Description: #{task[2]}"
        end
    end

    #Método para atualizar uma tarefa existente
    def update_task(id, title, description)
        db.execute("UPDATE tasks SET title = ?, description = ? WHERE id = ?", [title, description, id])
    end

    #Método para excluir uma tarefa
    def delete_task(id)
        db.execute("DELETE FROM tasks WHERE id = ?", [id])
    end

    #Exemplo e uso dos métodos
    create_task("Tarefa 1", "Descrição da Tarefa 1")
    create_task("Tarefa 2", "Descrição da Tarefa 2")
    list_tasks

    puts "Excluíndo a Tarefa 2..."
    delete_task(2)
    list_tasks