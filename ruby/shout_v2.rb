 module Run
 	def for_your_life(name)
 		puts name + " run for your life!!!"
 	end
 	def for_life(name)
 		puts name + " run! It's the freakin' weekend!"
 	end
end

class Zombies
	include Run
end 

class Work
	include Run
end

zombies = Zombies.new
zombies.for_your_life("Ivan")

work = Work.new
work.for_life("Ivan")