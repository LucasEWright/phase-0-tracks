class Santas
attr_reader :age
attr_accessor :ethnicity
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
     "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def celebrate_birthday
  	@age = age + 1
  	puts "Now they are #{age}!"
  end 

  def get_mad_at(mad_at)
  	@reindeer_ranking = @reindeer_ranking.push(mad_at)
  	puts @reindeer_ranking
  end


end
________________________

#Problems
#Can't get a random sample from the array.  I've tried .sample, .choice, rand().to_a, etc... trying all in multiple layers
#of the code.  Also, I don't know if it's related to the random number problem, but I also can get my index to move. 
#also triend While and If, to no avail.

gender = ["agender", "female", "male", "bigender"].sample
ethnicity = ["white", "black", "native american", "latino"].sample
age = (1..140).to_a
age = age.sample
index = 10

until index == 0 
	gender.each do |gender|
	ethnicity.each do |ethnicity|
	age.each do |age|
	  	puts "This is a santa who is #{gender}, #{ethnicity}, and is #{age} years old."
	  	index -= 1
	  	puts "----"
	end
	end
end 
end
_________________________
santas = Santas.new("male", "white")
santas.eat_milk_and_cookies("PB")
santas.speak
santas.get_mad_at("Lucas")
santas.celebrate_birthday