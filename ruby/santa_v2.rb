class Santa

attr_reader :ethnicity
attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
		p "intializing Santa instance..."
	end

	def speak
		p "Ho ho ho! Happy Holidays!"		
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end

end 

new_santas =[]
index = 0

ethnicity_array = ["white", "black", "latino", "asian", "alien"]
gender_array = ["male", "female", "agender", "non-binary"]

#====== driver code ======




#new array to hold generated santas
santas =[]
#posible gender array
gender = ["male", "female", "agender", "non-binary"]
#possbile ethnicity array
ethnicity = ["white", "black", "latino", "asian", "alien"]
#number of santas to create
index = 3

while index > 0
  new_santas = Santa.new(gender.sample, ethnicity.sample)
  new_santas.age = rand(1..140)
  santas.push(new_santas)
  index -= 1
  end

p santas
#_________________________

#_Driver code___
#santas = Santas.new("male", "white")
#santas.eat_milk_and_cookies("PB")
#santas.speak
#santas.get_mad_at("Lucas")
#santas.celebrate_birthday