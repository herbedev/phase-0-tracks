# Ask user for name input
# Split input into first and last name for an array
# Swap first and last name in array
# Downcase each letter
# Change vowels to next vowel in array
# Change consonants to next consonants in array
# Upcase, reverse and join together new name
# Return new name and ask user if they would like to change another name
# Once the user quits print out a list of user-inputed name and their spy-names


# Method to move each letter one character
def change_spy_name(name)
  
  vowels = ['a','e','i','o','u']
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  
  
  new_letters = name.map do |char|
    case
      # When the new letter is a vowel run the following code.
      when vowels.include?(char)
        vowels.rotate(1)[vowels.index(char)]
      # When the new letter is a consonants run the following code. 
      when consonants.include?(char)
        consonants.rotate(1)[consonants.index(char)]
      else
        (char)
    end
  end
end


# Initalize hash and quit status
spy_names = {}
quit_status = 0


# Ask for user Input
p "Welcome to FBI Name Changer 101"

while quit_status != "quit"
  p "Hit enter to continue or type 'quit' to quit the program"
  quit_status = gets.chomp
  # If user inputs quit and has already entered atleast one name to be changed run the following code.
  if quit_status == "quit" && spy_names.empty? == FALSE
    p spy_names.each { |new_name,old_name| p "#{new_name}'s previous identity was #{old_name}."}
  #  If the user inputs quit and no names have been entered run the following code.
  elsif quit_status == "quit" && spy_names.empty? == TRUE
    break
  else
  # If the user enters a name to be changed run the following code. 
    quit_status = nil
    p "What name would you like to be changed?"
    # Change name to a string.
    old_name = gets.chomp.to_str
    # Downcase the old name to get correct letter change.
    old_name.downcase!
    old_name_letters = old_name.chars
    # Run old name letters through change_spy_name to get the new letters
    old_name_letters = change_spy_name(old_name_letters)
    # Join, reverse and capitalize the new letters to form the new name
    alias_name = old_name_letters.join().split.map(&:capitalize).reverse.join(" ")
    spy_names[old_name.to_sym] = alias_name
    # Recapitalize old name
    old_name = old_name.split.map(&:capitalize).join(' ')
    p "#{old_name}'s new identity is #{alias_name}."
  end

end
