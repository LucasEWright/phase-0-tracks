# gems
require 'sqlite3'

# create database
db = SQLite3::Database.new("tasks.db")
db.results_as_hash = true

# create table
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

def show_table(db)
	db.execute("SELECT * FROM task_list")
end

show_table(db)


#========= USER INTERFACE ========


newTasks = true
puts "Welcome to your task manager."  

while newTasks == true
	puts "Would you like to add a new task?"
	answer = gets.chomp
		if answer == "no"
			p "Then get to work on all those tasks! Nerd."
			newTasks = false
		else
			puts "Great! Please enter what you need to get down:"
			task = gets.chomp
			puts "Is this 'high' or 'low' priority task?"
			priority = gets.chomp
			puts "Is this a 'work' or 'personal' task?"
			type = gets.chomp
			puts "When does this task need to be complete? e.g. '12/1/2016', please puts 'ASAP' if the task is immeadiate."
			due = gets.chomp
			new_task(db,task,priority,type,due)
		end 
end 
	modifyTasks = true
while modifyTasks == true
	puts "Would you like to modify an existing task?"
	answer = gets.chomp
			if answer == "no"
			p "Really now, get to work on all those tasks!"
			modifyTasks = false
		else
			puts "Type 'complete' to delete a task that has been completed, 'date' to change the due date or 'priority' to update the priorty category of a task."
			to_modify = gets.chomp
			if to_modify == "complete" 
				#db.execute("SELECT * FROM task_list")
				puts "What is the id number of the task you'd like to delete?"
				task_id = gets.chomp
				complete_task(db,task_id)
			elsif to_modify == "date"
				#db.execute("SELECT * FROM task_list")
				puts "What is the id number of the task you'd like to update?"
				task_id = gets.chomp
				puts "What is the new date? e.g. 12/3/2016"
				new_date = gets.chomp
				change_date(db, task_id, new_date)
			elsif to_modify == "priority"
				#db.execute("SELECT * FROM task_list")
				puts "What is the id number of the task you'd like to update?"
				task_id = gets.chomp
				puts "Change to 'high' or 'low'?"
				new_priority = gets.chomp
				change_priority(db, task_id, new_priority)
			else
				puts "Something has gone horribly wrong!!!"
			end 
	end 
end 

					

					


