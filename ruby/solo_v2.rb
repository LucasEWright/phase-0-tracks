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
	attr_reader :type, :age
	attr_accessor :height, :mood, :first, :last, :transforms_into

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

@index = 1
@new_array = []

def user_loop 

new_transformer = Transformer.new
puts "How tall, in feet, is your Transformer?"
	@height = gets.chomp
 	 #new_transformer.height = @height
puts "What is thier temperment?"
	@mood = gets.chomp
puts "What is thier first name?"
	@first = gets.chomp
	 #new_transformer.first = @first
puts "What is thier last name?"
	@last = gets.chomp
	 #new_transformer.last = @last
puts "What does your Transformer turn into?"
	@transforms_into = gets.chomp
	 #new_transformer.transforms_into = @transforms_into
puts "Would you like to create another Transformer? yes or no"
	answer = gets.chomp
	if answer == "yes" 
		@new_array.push(@height, @mood, @first, @last, @transforms_into)
		user_loop
	else 
		@new_array.push(@height, @mood, @first, @last, @transforms_into)
		@index = 0
		puts "Thanks for playing!!"
	end
	 p @new_array
		puts "You've create a Transformer who is a #{@mood} robot named #{@first} #{@last} who is #{@height} feet tall and can turn into a #{@transforms_into}!"
end


while @index != 0
user_loop
end

#PROBLEMS need to be able to return string with attributes stored in array.  May not be storing answers
#in single array because when I print array I get duplicates





