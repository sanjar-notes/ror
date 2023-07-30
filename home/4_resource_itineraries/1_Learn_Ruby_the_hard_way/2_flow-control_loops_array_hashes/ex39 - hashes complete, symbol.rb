# Hash
# 1. Initialize
    # H = {}
    # H = Hash.new(default_val), for both insertions and deletions
    # H = {a=>b, c=>d, e=>f}

    # Fun fact, the symbol => is called the 'hash rocket'

# 2. H.length - length

# 3. H[key], to get value
    # H.first [=nil] = get first key, value as a list

# 4. Insertions or Updates
    # H[key] = val

# 5. Deletions
    # H.delete(key) - returns the 'value'.

# 6. Membership
    # H.include? key

# 7. Looping - using for 'each' |k, v|

# 8. Keys, values access separate.
    # H.keys - array of keys
    # H.values - array of values
# 9. Iteration
    # 1. for in
        # singular - k, v pair Array
        # double, separate
    # 2. for each - single (pair Array) or double
    # 3. each_key - iterates over keys only
    # 4. each_value - iterates over values only
# creating a mapping of state to abbreviation
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbreviation is #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
states.each do |state, abbrev|
    puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
    puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abbreviated#{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nils" when something isn't in there
state = states['Texas']

if !state
    puts "Sorry, no Texas."
end

# default values using ||=with the nil result
city = cities['TX']
city ||= 'Does not Exist'
puts "The city for the state 'TX' is: #{city}"

# Symbols may be used as key values
=begin
Symbols should be valid variable names.
They are also used in refrencing method names.

The syntax for hashes change
we can use
    :symbol_name => val
    or
    symbol_name: val

    Both are equivalent.

    Access: A[:symbol_name], i.e. symbol.
=end
