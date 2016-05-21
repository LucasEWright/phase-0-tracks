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
	attr_reader 
	attr_accessor :type, :age, :height, :mood, :first, :last, :transforms_into

	def initialize 
		puts "Initializing a new transformer"
		@type = "robot"
		@age = rand(0...100)
		#@height  
		#@mood 
	#	puts "who is a #{age} year old #{mood} #{type} that is #{height} feet tall."
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
new_array = []

new_transformer = Transformer.new
puts "How tall, in feet, is your Transformer?"
	@height = gets.chomp
 	 new_transformer.height = @height
 	 new_array.push(new_transformer)
puts "What is thier temperment?"
	@mood = gets.chomp
	 new_transformer.mood = @mood
 	 new_array.push(new_transformer)
puts "What is thier first name?"
	@first = gets.chomp
	 new_transformer.first = @first
 	 new_array.push(new_transformer)
puts "What is thier last name?"
	@last = gets.chomp
	 new_transformer.last = @last
 	 new_array.push(new_transformer)
puts "What does your Transformer turn into?"
	@transforms_into = gets.chomp
	 new_transformer.transforms_into = @transforms_into
 	 new_array.push(new_transformer)
puts "Would you like to create another Transformer? yes or no"
	answer = gets.chomp
	if answer == "yes" 
		user_loop
		index = 0
	else 
		index -=1
		puts "Thanks for playing!!"
	end
end 
new_array.each do |type, age, height, mood, first, last, transforms_into|
		puts "You've create a Transformer who is a #{age} year old #{mood} #{type} who is #{height} feet tall and can turn into a #{transforms_into}!"
end
p new_array
end

user_loop
#PROBLEMS need to be able to return string with attributes stored in array.  May not be storing answers
#in single array because when I print array I get duplicates





