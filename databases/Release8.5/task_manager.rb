# gems
require 'sqlite3'
# create database
db = SQLite3::Database.new("tasks.db")
db.results_as_hash = true

#create_tbl = <<-SQL
#CREATE TABLE IF NOT EXISTS task_list (
#		id INTEGER PRIMARY KEY,
#		Task VARCHAR(255),
#		Priority VARCHAR(255),
#		Type VARCHAR(255),
#		DueDate DATE,
#		Complete BOOLEAN
#	)
#	SQL 

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS task_list (
		id INTEGER PRIMARY KEY,
		Task VARCHAR(255),
		Priority VARCHAR(255),
		Type VARCHAR(255),
		DueDate DATE,
		Complete BOOLEAN
	)
	SQL

#create task list table
db.execute(create_table_cmd)

def new_task(db, task, priority, type, due)
	db.execute("INSERT INTO task_list (Task, Priority, Type, DueDate)
		VALUES (?, ?, ?, ?)", [task, priority, type, due])
end

#new_task(db, "Buy bread", "low", "personal", "7/4/2018")

def complete_task(db, task_id)
	db.execute("DELETE FROM task_list WHERE id = #{task_id}")
end
#complete_task(db, 2)

def change_priority(db, task_id, new_priority)
	db.execute("UPDATE task_list SET Priority = '#{new_priority}' WHERE id = #{task_id}")
end

#change_priority(db,1,"high")


def change_date(db, task_id, new_date)
	db.execute("UPDATE task_list SET DueDate = '#{new_date}' WHERE id = #{task_id}")
end
#change_date(db, 1, "12/1/2017")