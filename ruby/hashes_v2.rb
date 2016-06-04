applicant = Hash.new 

puts "What's your name?"
applicant [:name] = gets.chomp
puts "How old are you?"
applicant [:age] = gets.chomp.to_i
puts "How many children do you care for?"
applicant [:children] = gets.chomp.to_i
puts "In a few words, what is your prefered decor?"
applicant [:decor] = gets.chomp
puts "Are you looking to start a project in the next 3 months? Yes or No please."
answer = gets.chomp.capitalize
	if answer == "Yes"
		applicant [:serious] = true
	elsif answer == "No"
		applicant [:serious] = false
	else
		puts "I don't you as a client, because you can't follow simple directions. BYE."
	end 
puts "What is your budget for this project?"
	budget_answer = gets.chomp.to_i
	if budget_answer >= 9999
		puts "Alright Baller, let's do this thing"
		applicant [:budget] = budget_answer
		applicant [:is_a_go] = true
	else
		puts "I don't get out of bed for less than $10,000. Try Bobby Trendy"
		applicant [:budget] = budget_answer
		applicant [:is_a_go] = false
	end
