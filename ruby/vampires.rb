	puts "How many will be processed?"
	number = gets.chomp
	number = number.to_i
	
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
	
	puts "Please list your allergies. Input Done when your list is complete or if you don't have any."
	allergies = gets.chomp
	
	while (allergies != "done" ) do
		allergies = gets.chomp
		if (allergies == "sushine")
			print "probably a vampire"
		else
			allergies = gets.chomp
		end
	end
	

age_check = 2016 - birthyear 

	if age == age_check && (gbread == "yes" || insurance == "yes")
		print "probably not a vampire"
	elsif age != age_check && (gbread == "no" || insurance == "no")
		print "probably a vampire"
	elsif (age != age_check && gbread != "yes" && insurance != "yes")
		print "almost certainly a vampire"
	elsif (name == "Drake Cula" || "Tu Fang" && (age == age_check && gbread == "yes" && insurance == "yes"))
		print "definitely a vampire"
	else
		print "Results inconclusive."
	end
	
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	
end

	until number <=1 
  	questions
	 number -= 1
	end
	

questions