#Задание 4 - final

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


def find_two_min arr
	uniq_arr = arr.uniq
	return uniq_arr.min(2)
end


def find_nearest num, arr
	return arr.min_by {|x| (num - x).abs}
end


def pos_divisors_uniq arr

	if arr.select {|x| x < 0}.length > 0
		abort "Массив содержит отрицательные элементы" 
	else
		new_arr = arr.map { |y| ((1..y).select { |x| y % x == 0 }) }.flatten
	end

	return new_arr.uniq

end


def square_of_pos_with_condition arr

	new_arr = arr.select {|x| x>0 && x < 100 && arr.count(x) > 2}
	return new_arr.map { |x| x**2 }.uniq

end

def read_array_from_file path
	if File.exist?(path)
		f = File.new(path, "r:UTF-8")
		content = f.read
		f.close
		return content.split(" ").map(&:to_i)
	else
		abort "Файл не найден, проверьте правильно ли указан путь"
	end
end

if (ARGV[0] == nil || ARGV[1] == nil)
	abort "Недостаточно аргументов"
else
	choose = ARGV[0]
	path = ARGV[1]
	num = ARGV[2].to_i

	case choose
		when "find_uniq"
			puts min_in_array read_array_from_file(path)
		when "find_two_min"
			puts find_two_min read_array_from_file(path)
		when "find_nearest"
			if ARGV[2] == nil
				abort "Недостаточно аргументов"
			else
				puts find_nearest num, read_array_from_file(path)
			end
		when "pos_divisors_uniq"
			puts pos_divisors_uniq read_array_from_file(path)
		when "square_of_pos_with_condition"
			puts square_of_pos_with_condition read_array_from_file(path)
		else abort "Аргумент указан неверно"
	end
end
