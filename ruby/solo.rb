#Build a transfromer#
#select three atributes: (age, height(number), temperment(str) )
#
#select three methods: 
#(name (first, last))- says hello, 
#transforms_into(whatever(str)), 
#destroy -prints str)   
#
## SPECIES ------------------------
# robot (set)

# CHARACTERISTICS ----------------
# Heigth: varies
# age: random
# temperment: varies
# Name: varies

# BEHAVIOR -----------------------
# transforms per user input
# destroys everything 
#===============================================================

class Transformer
	attr_reader :mood
	attr_accessor :type, :age

	def initialize(height, mood)
		puts "Initializing a new transformer"
		@type = "robot"
		@age = rand(0...100)
		@height = height.to_i
		@mood = mood
		puts "who is a #{age} year old #{mood} #{type} that is #{height} feet tall."
	end	

	def name(first, last)
		@first = first
		@last = last
		@name = @first + @last
		puts "Hello, my name is #{name}"
	end
	
	def transforms_into(anything)
		@transforms_into = anything
		puts "I've turned into a #{anything}"
	end

	def destroy
		puts "Self-destructing in 3...2...1..."		
	end
end


def user_loop 
index = 1
while index > 0

puts "How tall, in feet, is your Transformer?"
	@height = gets.chomp
puts "What is thier temperment?"
	@mood = gets.chomp
puts "What is thier first name?"
	@first = gets.chomp
puts "What is thier last name?"
	@last = gets.chomp
puts "What does your Transformer turn into?"
	@transforms_into = gets.chomp
puts "Would you like to create another Transformer? yes or no"
	answer = gets.chomp
	if answer == "yes" 
		user_loop
	else 
		puts "Thanks for playing!"
		index -=1
	end
end 
end

user_loop












end

