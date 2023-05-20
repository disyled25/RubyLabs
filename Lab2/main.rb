require_relative 'Student'

first_student = Student.new(1, "Назаров", "Георгий", "Григорьевич", "+79450395222", "@ngg_geo", "nazar@gmail.com", "nazar")
second_student = Student.new(2, "Петров", "Егор", "Алексеевич", "+79436695672", "@pea_e", "egor.petr@gmail.com", "pea99")
third_student = Student.new(3, "Иванов", "Иван", "Иванович", "+79557795348", "@ivan_ivan", "ivan_ivan@gmail.com", "ivanich21")

puts "#{first_student.information}\n"

puts "#{second_student.information}\n"

puts "#{third_student.information}\n"
