#Задание 4, номер 35

def find_nearest num, arr
	return arr.min_by {|x| (num - x).abs}
end

puts find_nearest 5, [1,1,6,7,7,6,2,8,4.5,5.3,3]