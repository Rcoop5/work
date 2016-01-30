#exerise 1:
if false
  greeting = “hello world”
end

greeting

# exercise 1 is nil because of false. If it were "true" it would still throw out
# an error because greeting is limited to the scope that it was defined in

#exercise 2:
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The last line "puts greetings" displays the following:
# [a=>'hi']

#exercise 3:
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


#exercise 4:
def generate_UUID
  characters =[]
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section_times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

#exercise 5:
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless !is_a_number?(word)
  end

  true
end
