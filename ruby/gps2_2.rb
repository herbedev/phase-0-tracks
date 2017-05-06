# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split input string into an array which will eventually be keys
  # Initialize the HASH
  ### Populate the HASH keys with the strings from the array
  # For EACH of those strings we need to put it into the HASH with a default value of 1
  # Print the list to the console [can you use one of your other methods here?]
# output: Hash

def create_list(list_item_names) 
	names_array = list_item_names.split(' ')

	list = {}

	names_array.each { |item_name| 
		list[item_name] = 1 
	}

	list 
end

our_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Define a method to add an item
  # Add the item and quanity to the exisiting hash
# output: hash

def add_an_item(list, item_name, quantity = 1)
	list[item_name] = quantity
	list
end

add_an_item(our_list, "oranges")

# p our_list

# Method to remove an item from the list
# input: list, item name
# steps: Retrieve list 
  # Find item to delete
  # Delete item
# output: hash

def remove_an_item(list, item_name)
	list.delete(item_name)
	list
end

remove_an_item(our_list, "apples")

# Method to update the quantity of an item
# input: list, item name and quantity
# steps: Retrieve list
  # Find item by item_name to change the quantity of
  # Change quanitity of requested item
# output: Hash

def update_quantity(list, item_name, quantity = 1)
	list[item_name] = quantity
	list
end

# Method to print a list and make it look pretty
# input: list
# steps: Print out hash
  # Add prefix to each output
  #
# output: hash

def print_list(list)
	list.each{|key, value| p "Item Name: #{key.capitalize} -- Quantity: #{value}"} 	
end

print_list(our_list)



 


