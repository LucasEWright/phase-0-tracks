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

new_name = []


puts "Please enter a name:"
first_name = gets.chomp.upcase
new_name.push(first_name)
real_name = first_name
real_name = real_name.downcase.split(" ").reverse
real_name = real_name.join(" ").downcase.split("")

	real_name.map! { |x|
	x.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
	} 
	real_name = real_name.join("").upcase
	new_name.push(real_name)
	#new_name = new_name.join("")
newHash = Hash[*new_name]
p new_name
p newHash
