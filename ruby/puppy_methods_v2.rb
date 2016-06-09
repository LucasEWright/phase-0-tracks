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
puppy.fetch("new boyfriend")
puppy.speak(2)
puppy.roll_over
puppy.dog_years(5)
puppy.play_dead

#===================================

class Cats
  
  def initialize
  end

  def pet
    puts "This cat wants you to pet them..."
    
  end

  def bite
    puts "...and now they want to bite you."
  end
end
  
cats_array = []
loop_num = 0 

while loop_num < 50
  cats_array.push(Cats.new)
  loop_num += 1
end

cats_array.each do |pet|
  pet.pet
  pet.bite
end

#Driver code for class cats 
cats = Cats.new
cats.pet
cats.bite