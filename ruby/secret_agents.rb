
def encrypt(str)
str.tr('abcdefghijklmnopqrstuvwxyz', 'bcdefghijklmnopqrstuvwxyza')
end

def decrypt(str)
str.tr('bcdefghijklmnopqrstuvwxyza', 'abcdefghijklmnopqrstuvwxyz')
end

