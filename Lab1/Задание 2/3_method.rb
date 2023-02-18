#Вариант 11
#Найти сумму всех делителей числа, взаимно простых с суммой цифр числа и не взаимно простых с произведением цифр числа

def is_coprime? num, other_num
	if num.gcd(other_num) == 1
		return true
	else
		return false
	end
end

def divisors_of_number num
	return (1..num).select { |x| num % x == 0 }
end

def sum_of_digits num
	return num.to_s.split("").map(&:to_i).inject(0, :+)
end

def product_of_digits num
	return num.to_s.split("").map(&:to_i).inject(0, :*)
end

def calculate num
	num_sum = sum_of_digits(num)
	num_prod = product_of_digits(num)
	result = 0

	for i in divisors_of_number(num) do
		if is_coprime?(i, num_sum) && !is_coprime?(i, num_prod)
			result += i
		end
	end

	return result
end


num = 12

puts divisors_of_number num
puts "--------"
puts calculate num