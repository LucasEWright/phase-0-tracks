
def encrypt(str)
str.tr('abcdefghijklmnopqrstuvwxyz', 'bcdefghijklmnopqrstuvwxyza')
end

def decrypt(str)
str.tr('bcdefghijklmnopqrstuvwxyza', 'abcdefghijklmnopqrstuvwxyz')
end

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe") 

# this produces the original password because it first calls to encrypt it
# then to decrypt, flow is controled by the nesting.
decrypt(encrypt("swordfish"))