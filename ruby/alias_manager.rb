	def next_letter ()
		().tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
	end
	
	def next_vowel
		().tr('aeiou', 'eioua')
	end

	def next_con(str)
		().tr('bcdfghjklmnpqrstvwxyz', 'bcdfghjklmnpqrstvwxyz')
	end


def program
puts "Please enter name:"
	letters = gets.chomp.downcase

letters = letters.split(' ').reverse
letters.map! do |letter| 
	letter.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
	end
end
	## need to fix downcase issue and add in quit option