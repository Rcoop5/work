#exerice 3
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Displays the following:
# My string looks like this now: pumpkins
# My array looks like this now: ["pumpkins", "rutabaga"]

#exercise 4
def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Displays the following:
# My string looks like this now: rutabaga
#My array looks like this now: ["pumpkins"]

#exercise 5
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#Unnecessary duplication can be avoiding by doing the following:

def color_valid(color)
  color == "blue" || color == "green"
end
