

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

	puts "Are you sure that is your favorite color?"
	follow_up = gets.chomp
	if follow_up == "none" then
		puts applicant
	else
		applicant.each {|k, v| applicant[k] = v = follow_up}
		puts applicant
	end
