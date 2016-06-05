vowel_str = ("aeiou")
consonant_str = ("abcdefghijklmnopqrstuvwxyz")

vowel_array = ["a", "e", "i", "o", "u"]
consonant_array = ("abcdefghijklmnopqrstuvwxyz").split("")

def next_letter(a)
	a.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
end

def next_vowel(a)
	a.tr('aeiou', 'eioua')
end

def next_con(a)
	a.tr('bcdfghjklmnpqrstvwxyz', 'bcdfghjklmnpqrstvwxyz')
end

@new_name = []
@newHash = Hash.new
@index = 1

def test_method
puts "Please enter a name:"
@first_name = gets.chomp.upcase
	if @first_name == "QUIT"
		p "Stopped"
		@newHash = Hash[*@new_name]
		@newHash.each { |name1, name2| p "#{name2} is actually #{name1}." } 
		@index = 0
	else
		
	@new_name.push(@first_name)
	real_name = @first_name
	real_name = real_name.split(" ").reverse
	real_name = real_name.join(" ").downcase.split("")

	real_name.map! { |x|
	x.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
	} 
	real_name = real_name.join("").upcase
	p "New name is #{real_name}"
		real_name_2 = real_name
		@new_name.push(real_name_2)
	end
	
end
	
while @index != 0
	test_method
end






