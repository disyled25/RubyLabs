#Задание 3_2

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

	case choose
		when "min_in_array"
			puts min_in_array read_array_from_file(path)
		when "first_positive"
			puts first_positive read_array_from_file(path)
		else abort "Аргумент указан неверно"
	end
end
