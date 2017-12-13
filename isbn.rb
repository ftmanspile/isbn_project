puts "Please enter a number."
number = gets.chomp

array_isbn = number.split("").map(&:to_i)

def valid_10_isbn(array_isbn)
	counter = 10
	total = 0

	array_isbn.each do |digit|
		total = total + (counter * digit)
		counter = counter - 1
	end
	if total % 11 == 0
		puts "This is a valid 10 digit isbn number"
	else
		puts "This is not a valid 10 digit isbn number"
	end
end

def valid_13_isbn(array_isbn)
	multiplier_index = 0
	total = 0
multiplier_array = [1 , 3 , 1 , 3 , 1 , 3 , 1 , 3 , 1 , 3 , 1 , 3 , 1]
	array_isbn.each do |digit|
		total = total + (multiplier_array[multiplier_index] * digit)
		multiplier_index = multiplier_index + 1
	end
	if total % 10 == 0
		puts "This is a valid 13 digit isbn number"
	else
		puts "This is not a valid 13 digit isbn number"
	end
end


	isbn_count = array_isbn.count

	if isbn_count == 10
		valid_10_isbn(array_isbn)

	elsif isbn_count == 13
		valid_13_isbn(array_isbn)
		
	else
		puts "not an isbn number"
	end

