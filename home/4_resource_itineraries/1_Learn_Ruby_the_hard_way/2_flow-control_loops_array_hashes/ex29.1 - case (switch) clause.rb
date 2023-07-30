# syntax for case (known as switch in C++)
=begin

case variable
   when 'A'
    ...
   when 'B'

   when 'C'

   else # aka default in C++
end

Note:
    - No end in each case, as the next 'when' automatically indicates this
    - Fallthrough - absent in Ruby
=end

a = 2
case a
when 1
    puts "Hello"
    puts "Bye"
when 3
    puts "He"
    puts "She"
    puts "They"
when 2
    puts "Gotcha"
when 4
    puts"This is awesome"
end
