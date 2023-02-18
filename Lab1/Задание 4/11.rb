#Задание 4, номер 11

def find_uniq arr
	if arr.uniq.length != 2
		abort "Введенный массив не соответствует требованиям"
	else
		uniq_arr = arr.select { |x| arr.count(x) == 1 }
	end

	if uniq_arr.length != 1
		abort "Введенный массив не соответствует требованиям"
	end

	return uniq_arr
end

puts find_uniq ["a","a","a","a","a","b","a","a","a"]