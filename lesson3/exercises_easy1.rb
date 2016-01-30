#exercise 1:
#numbers uniq made a new array of only unique numbers but didn't permanently
#modify the numbers variable. If the method uniq! had been used the new array
# would be 1,2,3 instead of 1,2,2,3

#exercise 2:
# in ruby ! and ? are actually parts of methods themselves. methods ending in ! perform a permanent change
# methods ending in ? return a boolean which makes the code flow even more intuitively
# != in ruby means not equal
# ! before something like !user_name
# ! after something like words.uniq! will modify the words object premanently and return a new array with unique numbers only
# !! before something means return its boolean equivalent

#exercise 3:
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

#exercise 4:
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # this will delete at the 1 index. So the number 2 will be deleted
numbers.delete(1) # this will delete the number 1

#exercise 5:
(10..100).cover?(42)

#exercise 6:
famous_words = "seven years ago..."
famous_words << "Found score and "
famous_words = "Four score and " + "seven years ago..."
famous_words.prepend("Four score and ")
"Four score and " + famous_words

#exercise 8:
flintstones = ["fred", "wilma", ["barney", "betty"], ["bambam", "pebbles"]]
flintstones.flatten!

#exercise 9:
flintstones = { "Fred": 0, "Wilma": 1, "Barney": 2, "Betty": 3, "BamBam": 4, "Pebbles": 5}
flintstones.assoc("Barney")

#exercise 10:
flintstones = %w(Fred, Barney, Wilma, Betty, Pebbles, BamBam)
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
