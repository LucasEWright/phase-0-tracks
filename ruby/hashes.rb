
	#get user input, assign hash for each input
	#print hashes
	#add follow-up questions and reassign hash value if user gives new value
	#print hashes
	#
	

 	

 	applicant = Hash.new
	
	puts "What is your name?"
	applicant["name"] = gets.chomp
	puts "How many children do you have?"
	children = gets.chomp
	applicant["children"]= children.to_i
	puts "What is your fave shade of blue?"
	applicant["favblueshade"] = gets.chomp
	puts "Will you be the worst client I've ever had?"
	applicant["badclient"] = gets.chomp

puts applicant

	puts "Are you sure that is your favorite color? If it is, type none, otherwise enter your real answer"
	follow_up = gets.chomp
	if follow_up == "none" then
		puts applicant
	else
		applicant.each {|k, v| applicant[k] = v = follow_up}
		puts applicant
	end