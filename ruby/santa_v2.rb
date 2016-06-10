class Santa

	def intialize(gender, ethnicity)
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