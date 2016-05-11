applicant = {
	name => name,
	children => children,
	favblueshade => favblueshade,
	badclient => badclient,
}

def questions
	puts "What is your name?"
	name = gets.chomp
	puts "How many children do you have?"
	children = gets.chomp
	children= children.to_i
	puts "What is your fave shade of blue?"
	favblueshade = gets.chomp
	puts "Will you be the worst client I've ever had?"
	badclient = gets.chomp
end	
 questions

puts applicant


