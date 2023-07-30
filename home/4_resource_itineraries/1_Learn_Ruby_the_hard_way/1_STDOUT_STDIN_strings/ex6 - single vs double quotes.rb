# single quotes - like rStrings in Python, as it is, extra backslashes occur for escapable chars. s
# double quotes - just like Python quotes (i.e. fully functional, including interpolation)

types_of_people = 10 s
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts 'I said: #{x}.' # string transpolation
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't tha joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e
