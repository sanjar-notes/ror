animals = ['bear', 'tiger', 'penguin', 'zebra']
# 1. access - 0 based. negative is also accepted
# Just like Python
bear = animals[0]

animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
puts animals[-1]

# 2. Membership (Array, Container) - x.include?y
# NOT includes, NO s
puts [1, 2, 3].include? 1
puts "Sanjar".include? "a"

# 3. Soft copy (reference) is the norm
# To make deep array copies, use the splat operator
