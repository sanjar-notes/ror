hairs = ['brown', 'blond', 'red']
eyes = ['brown', 'blue', 'green']
weights = [1, 2, 3, 4]

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# 1. for in - for containers
for number in the_count
    puts "This is count #{number}"
end

# 2.1 for 'each {}' - Syntax is unusual
# {} represents the block, so no end needed
# there can be multiple (comma sep) iteration variables

fruits.each{
    |i| puts "#{i}"
}

# 2.2 for 'each do end'or alternate syntax
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end
# NOTE: each moves over every element, even n-dimensional parts.

# 3 - for for ranges (generative container)
# two dots - inclusive range
# three dots - end exclusive (usual in python)
for i in (1...10) # inclusive (imp)
    puts i
end

