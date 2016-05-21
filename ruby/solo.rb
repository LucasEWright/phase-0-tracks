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
		@age = 0
		@height = height.to_i
		@mood = mood
		puts "who is a #{mood} #{type} that is #{height} feet tall."
	end	

	def name(first, last)
		@name = first + last
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

