class Santas
  
attr_reader :ethnicity
attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
     "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
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
#________________________





#new array to hold generated santas
santas =[]
#posible gender array
gender = ["agender", "female", "male", "bigender"]
#possbile ethnicity array
ethnicity = ["white", "black", "native american", "latino"]
#number of santas to create
index = 10

while index > 0
  new_santas = Santas.new(gender.sample, ethnicity.sample)
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