class TodoList
	#stores the list items given on initialization
	def initialize (array)
		@list_array = array
	end

	#gets inital array
	def get_items
		@list_array
	end

	#adds an item to the list
	def add_item (list_item)
		@list_array << list_item
	end

	#deletes an item
	def delete_item (list_item)
		@list_array.delete(list_item)
	end

	# retrieves an item by index
	def get_item(item_number)
		@list_array[item_number]
	end
end