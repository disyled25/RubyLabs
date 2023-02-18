#Задание 4, номер 59
#Дан список. Построить новый список из квадратов неотрицательных чисел, меньших 100 и встречающихся в массиве больше 2 раз.

def square_of_pos_with_condition arr

	new_arr = arr.select {|x| x>0 && x < 100 && arr.count(x) > 2}
	return new_arr.map { |x| x**2 }.uniq

end

puts square_of_pos_with_condition [124, -4, 15, -154, 100, 15, 45, 600, 13, -56, 45, 45, -45, 15, 16, 0, 16]