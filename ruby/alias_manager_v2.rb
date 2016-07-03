# define new method
# create method to take original name and set to variable
# create an array of two items, one for each last and first names, reverse them 
# iterate over each letter in the array and return the next vowel or consonant, modifying the array 
# create new hash, using originla name as the key and the alias as the value
# iterate over hash to display the original name and new alias
# create loop to repeat method until condition is met (index)


@new_name = []
@newHash = Hash.new
@index = 1

def alias_maker
puts "Please enter a name:"
first_name = gets.chomp.downcase.split(" ")
first_name.map! { |x| x.capitalize }
first_name = first_name.join(" ")
	if first_name == "Quit"
		p "====================="
		@newHash = Hash[*@new_name]
		@newHash.each { |name1, name2| p "#{name2} is actually #{name1}." } 
		@index = 0
	else	
	@new_name.push(first_name)
	real_name = first_name
	real_name = real_name.split(" ").reverse
	real_name = real_name.join(" ").downcase.split("")

	real_name.map! { |x|
	x.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
	} 
	real_name = real_name.join("").capitalize
	p "New name is #{real_name}"
		real_name_2 = real_name
		@new_name.push(real_name_2)
	end
	
end
	
while @index != 0
	alias_maker
end





