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

# print vs puts (decorated output)

# 2. Implicit return
    # if return is ommited - last expression is returned

# 3. Code is allowed after return 2 (Ruby is not like Java)
