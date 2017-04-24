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