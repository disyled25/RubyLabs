user_name = ARGV[0]
puts "Приветствую #{user_name}"
puts "Какой язык программирования ваш любимый?"

case STDIN.gets.chomp
	when "Ruby"
		puts "Подлиза!"
	when "C++"
		puts "Тебе больше 30"
	when "Python"
		puts "Зумер"
	when "R"
		puts "Любишь БОЛЬШИЕ данные?"
	else puts "Скоро будет Ruby!"
end

puts "Введите команду Ruby"
s = STDIN.gets.chomp
puts eval(s)

puts "Введите команду Linux"
s = STDIN.gets.chomp
com = `#{s}`
puts com