# this one is like your scripts with ARGV

##### 1. Functions, def, end to indicate end of block - no colon.

def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arge2: #{arg2}"
    print args
    puts
end

#ok, that *args is actually pointless, we can just do this
def print_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes on argument
def print_one(arg1)
    puts "arg1: #{arg1}"
end

# this takes no arguments
def print_none # skipped parentheses
    puts "I got nothin"
end

print_two("Zed", "Shaw")
print_two_again("Zed", "Shaw")
print_one("First!")
print_none()

# 2. print vs puts (decorated output)

=begin 3. * operator
 splat is just like Python * and JavaScript spread
 - May be used for deep copy of arrays
 - For variadic functions
=end

=begin 4. Parentheses skip - in defintion and call.
 Parentheses are 'meant' to be skipped in Ruby, as much as possible.
 Cases:
    1. Function definition.
        a. No params
        b. Have params - just write a comma separated list
    2. Function call, same, skip parentheses as you wish.
       And use a comma separated list for multiple params.
    3. But objects NEED a '.' for calling methods
    4. Also one can have spaces arount the '.'
    5. KEEP the parentheses in chained calls,
      as it's ambiguous otherwise.


    In short: skip parentheses only when it's unambiguous.
=end

def f
    puts "No param"
end

def g x
    puts x
end

def h x, y
    puts x
    puts y
end

puts "100" . to_i
