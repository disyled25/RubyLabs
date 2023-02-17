# Вариант 11
#Найти кол-во делителей числа, не делящихся на 3

def number_of_divisors num
    result = 0

    for i in 1..num do
        if (num%i == 0 && i%3 != 0)
            result += 1
        end
    end

    return result
end

puts number_of_divisors 6
