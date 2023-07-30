i = 0
numbers = []

# 1 while loop, end as for ending block
# minimum parentheses as usual
while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)

    i+=1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?``
numbers.each {|num| puts num}

=begin
next - same as continue in Python
break - same as in Python
=end
