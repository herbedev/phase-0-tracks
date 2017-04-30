def status_message
	puts "Hello there! (Before Running Block)"
	yield("Steve", "John")
	puts "Goodbye! (After Running Block) "
end

status_message { |name1, name2| puts "Great to see you #{name1} and #{name2} "}