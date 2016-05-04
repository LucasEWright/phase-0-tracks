def questions
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	age= age.to_i
	puts "What year were you born?"
	birthyear = gets.chomp
	birthyear = birthyear.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	gbread = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp

age_check = 2016 - birthyear 

	if age == age_check && (gbread == "yes" || insurance == "yes")
		print "probably not a vampire"
	elsif age != age_check && (gbread == "no" || insurance == "no")
		print "probably a vampire"
	elsif (age != age_check && gbread != "yes" && insurance != "yes")
		print "almost certainly a vampire"
	elsif name == "Drake Cula" || "Tu Fang"
		print "definitely a vampire"
	else
		print "Results inconclusive."
	end
	

end


questions