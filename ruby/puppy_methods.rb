class Puppy

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

  	
  end
end


puppy = Puppy.new
puppy.fetch("boyfriend")
puppy.speak(5)


#_____________________
