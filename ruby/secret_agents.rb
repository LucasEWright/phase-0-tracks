# Psueddcode
#- determine user input method
#- identify if the string needs to be converted (array, integer,..)
#-define method to replace original letter in control sting with letter in modified string
#-create user interface with needed operators
#-print results

#replaces letters in user input string with following letter in alphabet
def encrypt(str)
	str.tr('abcdefghijklmnopqrstuvwxyz', 'bcdefghijklmnopqrstuvwxyza')
end

#replaces letters in user input string with previous letter in alphabet
def decrypt(str)
	str.tr('bcdefghijklmnopqrstuvwxyza', 'abcdefghijklmnopqrstuvwxyz')
end
#asks user thier intent
	puts "Would like to encrypt or decrypt a password"
		method = gets.chomp
#asks user for password to modify
	puts "What is the password?"
		password = gets.chomp
#runs method based on user input and prints result
	if method == "encrypt"
		encrypt(password)
	else
		decrypt(password)
	end


encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe") 

# this produces the original password because it first calls to encrypt it
# then to decrypt, flow is controled by the nesting.
decrypt(encrypt("swordfish"))