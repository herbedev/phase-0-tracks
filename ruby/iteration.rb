# Release 1
# Declare an array and a hash, and populate each of them with some data. 

# Array
car_brands = ["bmw", "toyota", "jeep", "mercedes"]

# Hash
car_one = {
	brand: "toyota",
	year: "2010",
	type: "suv",
	color: "blue"
}

# Array .each example
puts car_brands

car_brands.each do |key|
	puts key
end

puts car_brands

# Array map example
puts car_brands

car_brands.map! do |key|
	key.upcase
end

puts car_brands

# Hash .each example

puts car_one

car_one.each do |key, value|
	puts "#{key}, #{value}"
end

puts car_one

# Release 2

# Initalize Hash and Array
number_array =  ["1","2","3","4","5"]
number_hash = {
	number_1: "one",
	number_2: "two",
	number_3: "three",
	number_4: "four",
	number_5: "five"
}

# Iterate and delete based on content (Array)
number_array.delete_if { |number| number == "2"}
p number_array

# Iterate and delete based on content (Hash)
number_hash.delete_if { |key, value| key == :number_1 || value == "one"}
p number_hash

# A method that filters a data structure for only items that do satisfy a certain condition (Array)
p number_array
number_array.keep_if { |number| number >= "3"}
p number_array

# A method that filters a data structure for only items that do satisfy a certain condition (Hash)
p number_hash
number_hash.keep_if {|key, value| value.length <= 4}
p number_hash

# A different method that filters a data structure for only items satisfying a certain condition (Array)
p number_array
number_array.find_all { |number| number.length <= 0 }
p number_array

# A different method that filters a data structure for only items satisfying a certain condition (Hash)
number_hash.select {|key, value| value.chars.first == "t"} 

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (Arrary)
number_array.reject { |key| key < "4"}

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (Hash)
p number_hash
number_hash.reject { |key, value| value.chars.last == "e" } 
p number_hash
