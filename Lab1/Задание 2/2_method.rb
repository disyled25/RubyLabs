#Вариант 11
#Найти минимальную нечетную цифру числа

def get_min_odd_digit_of_number num

	num = num.to_s.split("").map(&:to_i)

	result = num[0]

	for digit in num do
		if digit.odd? && digit < result
			result = digit
		end
	end

	return result
end 


puts get_min_odd_digit_of_number 9285