# Release 0 Umplement a Simple Search

arr = [42, 89, 23, 1]

search_number = 0

def search_array (array_name, search_number)

	loop_counter = 0
	index = 0
	out_clause = 0

	until out_clause == TRUE

		array_name.each do |number|

			case 
				when number == search_number
					loop_counter += 1
					out_clause = TRUE
					index = loop_counter -1
					break
				else
					loop_counter =+ 1
			end

		out_clause = TRUE
		index = nil

		end
	end

	index
end

p search_array(arr, 23)

# Release 1 Calculate Fibonacci Numbers

def fib(number)
	loop_counter = 0
	fib_array = []
	next_num = 0

		while loop_counter < number
			if loop_counter == 0
				fib_array << 0
			elsif loop_counter == 1
				fib_array << 1
			elsif loop_counter >= 1
				next_num = fib_array[-1] + fib_array[-2]
				fib_array << next_num
			else
			end #End If
			loop_counter += 1
		end # End while
	return fib_array
end

puts fib(10)
puts fib(100)


