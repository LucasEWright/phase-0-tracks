class Puppy

	def initialize
  	puts "Initializing new puppy instance ..."
  	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	puts "Woof!" * times
  end
  def roll_over
  	puts "*rolls over*"
  end
  def dog_years(years)
  	puts years * 7
  end
  def play_dead
  	puts "Bang!"
  end
end

#Driver code for class cats 
puppy = Puppy.new
puppy.fetch("boyfriend")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(3)
puppy.play_dead

#--------------------------------
class Cats
	
	def initialize
	end

	def jumps
		puts "This cat jumps..."
		
	end

	def lands
		puts "...lands on it's feet"
	end
end
	
cats_array = []
loop_num = 0 

while loop_num < 50
	cats_array.push(Cats.new)
	loop_num += 1
end

cats_array.each do |pet|
	pet.jumps
	pet.lands
end

#Driver code for class cats 
cats = Cats.new
cats.jumps
cats.lands