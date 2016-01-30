#exercise 1:
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

#exercise 2:
statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

#exercise 3:
#The following is an error because you can't add an integer to a string
# You can convert the integer to a string using .to_s or use string interpolation
puts "the value of 40 + 2 is " + (40 + 2)

#exercise 4:
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
#The output of this code is [1, 3]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
#The output of this code is [1, 2]

#exercise 5
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

#exercise 7
#The following will not work because limit is not being called by fib
limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#exercise 8
# The following titleize's a string
words.split.map { |word| word.capitalize }.join(' ')

#exercise 9
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# To add an addition age_group key that has one of three values that describes
#each family memeber as either kid, adult, senior, try the following:

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
 
