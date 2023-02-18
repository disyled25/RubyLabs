#Задание 4, номер 23
#Дан целочисленный массив. Необходимо найти два наименьших элемента.

def find_two_min arr
	uniq_arr = arr.uniq
	return uniq_arr.min(2)
end

puts find_two_min [1,1,6,7,7,6,2,8,4,3]