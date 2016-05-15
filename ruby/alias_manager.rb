	#prompt user for name to encrypt
	#covert input to array and reverse
	#replace vowels with next in vowel sequence
	#replace consonats with next letters in alphabet (excluding vowels)
	# => use .tr
	#print new name
	#store new name as hash
	# => will need to access original input as well as alias
	#repeat process until user input is equal to quit
	#print statement with both original name and alias for all inputs




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

program

while program != "quit" do
	program
end

