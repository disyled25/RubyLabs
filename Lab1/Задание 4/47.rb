#Задание 4, номер 47
#Для введенного списка положительных чисел построить список всех положительных делителей элементов списка без повторений.

def pos_divisors_uniq arr

	if arr.select {|x| x < 0}.length > 0
		abort "Массив содержит отрицательные элементы" 
	else
		new_arr = arr.map { |y| ((1..y).select { |x| y % x == 0 }) }.flatten
	end

	return new_arr.uniq

end

puts pos_divisors_uniq [3,4,5]


