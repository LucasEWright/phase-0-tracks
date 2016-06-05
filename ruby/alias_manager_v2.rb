vowel_str = ("aeiou")
consonant_str = ("abcdefghijklmnopqrstuvwxyz")

vowel_array = ["a", "e", "i", "o", "u"]
consonant_array = ("abcdefghijklmnopqrstuvwxyz").split("")

puts "Please enter a name:"
real_name = gets.chomp.downcase.split(" ").reverse
real_name
