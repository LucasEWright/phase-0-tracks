 module Shout
 	def for_your_life(name)
 		puts name + " run for your life!!!"
 	end
 	def for_life(name)
 		puts name + " run! It's the freakin' weekend!"
 	end
end

class Zombies
	include Shout
end 

class Work
	include Shout
end

zombies = Zombies.new
zombies.for_your_life("Ivan")

work = Work.new
work.for_life("Ivan")