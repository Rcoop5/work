def greeting
  puts 'Welcome to Awesome Calculator V 1.0'
end

def type_of_operation
  puts 'What would you like to do? Please choose +, -, x, or /'
end

def ask_first_number
  puts 'What is your first number?'
end

def ask_second_number
  puts 'What is your second number?'
end

def addition(first_number, second_number)
  i = first_number + second_number
  puts "Your total is #{i}"
end

def subtraction(first_number, second_number)
  i = first_number - second_number
  puts "Your total is #{i}"
end

def multiplication(first_number, second_number)
  i = first_number * second_number
  puts "Your total is #{i}"
end

def division(first_number, second_number)
  i = first_number / second_number
  puts "Your total is #{i}"
end

puts greeting

puts ask_first_number
first_number = gets.chomp.to_i

sleep 1
system 'clear'

puts type_of_operation
chosen_operation = gets.chomp.downcase

sleep 1
system 'clear'

puts ask_second_number
second_number = gets.chomp.to_i

sleep 1
system 'clear'

if chosen_operation == '+'
  puts addition(first_number, second_number)
elsif chosen_operation == '-'
  puts subtraction(first_number, second_number)
elsif chosen_operation == 'x'
  puts multiplication(first_number, second_number)
elsif chosen_operation == '/'
  puts division(first_number, second_number)
end
