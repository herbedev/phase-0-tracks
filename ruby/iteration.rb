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