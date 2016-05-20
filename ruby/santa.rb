class Santas
attr_reader :age, :ethnicity
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

gender = ["agender", "female", "male", "bigender"]
ethnicity = ["white", "black", "native american", "latino"]
santas = []

puts "creating some diversity..."
gender.each do |gender|
	puts "We now have a #{gender} Santa. Welcome!"
	puts "___________"
end
ethnicity.each do |ethnicity|
	puts "We now have a #{ethnicity} Santa. Welcome!"
	puts "___________"
end


santas = Santas.new("male", "white")
santas.eat_milk_and_cookies("PB")
santas.speak
santas.get_mad_at("Lucas")
santas.celebrate_birthday