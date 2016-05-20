
class Puppy
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize
    puts "Initializing Santa instance ..."
  end
end

puppy = Puppy.new
puppy.eat_milk_and_cookies("PB")
puppy.speak