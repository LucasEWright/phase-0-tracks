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


puppy = Puppy.new
puppy.fetch("boyfriend")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(3)
puppy.play_dead



#_____________________
