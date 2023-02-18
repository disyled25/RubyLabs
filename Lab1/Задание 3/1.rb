#Задание 3_1

def min_in_array arr

	if arr.is_a?(Array)
		min = arr[0]

		for i in arr do
			if i < min
				min = i
			end
		end

		return min
	else 
		abort "Не массив" 
	end

end


def first_positive arr

	if arr.is_a?(Array)
		count = 0

		for i in arr do
			if i>0
				return count
			end
			count += 1
		end
	else 
		abort "Не массив" 
	end		

end

puts [-1,-5,-3,-4,5,6,-5,3]