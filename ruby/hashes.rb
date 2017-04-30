# PSEUDOCODE
# 1. Initalize Hash
# 2. Ask the designer / user for all of the required information
# 3. Convert any user input to the appropriate data type
# 4. Print the hash back out to the screen when the designer has answered all of the questions
# 5. Give the user the opportunity to update a key (no need to loop) If the designer says "none", skip it
# 	5.1 If the user responds with no, proceed to the end.
# 	5.2 If the user responds with a key they would like to update
# 		5.21 Have the user enter the corresponding key
#  		5.22 Replace value in that key with the new user input
# 6. Print the latest version of the hash, and exit the program.

# True False Method

def true_or_false (answer)
  if answer == "y"
    true
  elsif answer == "n"
    false
  else nil
  end
end

# 1. Initalize Hash

interior_design_form = {}

# 2. Ask the designer / user for all of the required information

p "What is your client's name?"
	interior_design_form[:name] = gets.chomp
p "What is your client's age?"
	interior_design_form[:age] = gets.chomp
p "How many children does your client have?"
	interior_design_form[:number_of_children] = gets.chomp
p "What decor theme would you like?"
	interior_design_form[:decor_theme] = gets.chomp
p "What is your client's phone number?"
	interior_design_form[:phone_number] = gets.chomp
p "What is your client's budget?"
	interior_design_form[:budget] = gets.chomp
p "Is it okay to go over budget? (y/n)" 
	interior_design_form[:budget_over] = gets.chomp
	# Runs user input through previously defined true_or_false method.
	interior_design_form[:budget_over] = true_or_false(interior_design_form[:budget_over])

# 4. Print the hash back out to the screen when the designer has answered all of the questions

p interior_design_form.each{|key, value| p "#{key}: #{value}"} 

# 5. Give the user the opportunity to update a key (no need to loop) If the designer says "none", skip it
p "Above is what you entered would you like to change anything? (y/n)"
change_input = gets.chomp

	if change_input ==  "y"
		p "Here are the form field names and current values, please enter a single form field name to change it"
		interior_design_form.each{|key, value| p "#{key}: #{value}"} 
		#5.21 Have the user enter the corresponding key (update_input)
		update_input = gets.chomp.to_sym
		p "What would you like to change this to?"
		new_input = gets.chomp
		#5.22 Replace value in that key with the new user input
		interior_design_form[update_input] = new_input
		p "Here is your new form"
		# 6. Print the latest version of the hash, and exit the program.
		interior_design_form.each{|key, value| p "#{key}: #{value}"} 
	else
		p "Here is your final form"
		# 6. Print the latest version of the hash, and exit the program.
		interior_design_form.each{|key, value| p "#{key}: #{value}"} 
	end
