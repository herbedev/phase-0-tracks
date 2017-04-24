#Encryption
#index alphabet string
#while [counter value] is less than password length:
#match letter from password to index of alphabet string
#each letter gets a value of index +1
#output value of each letter +1

def encrypt(password)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  password_array = []

  if alphabet[alphabet.index(password[index]) +1] == nil
    alphabet[alphabet.index(password[index]) +1] = "a"
  end
  while index < password.length
    password_array.push(alphabet[alphabet.index(password[index]) +1])
    index += 1
  end
  password = password_array.join("")
  puts password
  return password
end

#Decryption
#index alphabet string
#while [counter value] is less than password length:
#match letter from password to index of alphabet string
#each letter gets a value of index -1
#output value of each letter -1

def decrypt(password)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  password_array = []
  while index < password.length
    password_array.push(alphabet[alphabet.index(password[index]) -1])
    index += 1
  end
  password = password_array.join("")
  puts password
  return password
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
#decrypt(encrypt("swordfish"))
#The reason why this nested call works is because the methods themselves aren't nested, as you can't have nested methods in ruby (I dont think). So this nested call first encrypts "swordfish" then decrypts it so it is the same as in the input.

def driver
  #asks the user if they would like to decrypt or encrypt a password
  puts "Would you like to decrypt or encrypt a password?"
  decrypt_or_encrypt = gets.chomp
  #if encrypt is chosen it asks the user what they would like to encrypt then runs the input through the encrypt method
  if decrypt_or_encrypt == "encrypt"
    puts "What would you like to encrypt?"
    password = gets.chomp
    encrypt(password)
  #if decrypt is chosen it asks the user what they would like to decrypt then runs the input through the decrypt method
  elsif decrypt_or_encrypt == "decrypt"
    puts "What would you like to decrypt?"
    password = gets.chomp
    decrypt(password)
  end
end

driver


