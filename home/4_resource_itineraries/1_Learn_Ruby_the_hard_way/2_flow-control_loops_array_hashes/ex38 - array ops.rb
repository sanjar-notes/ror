# 1. Initialize array
    # A = []

# 2. A.length - length

# 3. Access
    # A[i] - i
    # A.first - first element
    # A.last - last element

# 4. Insertions
    # A.insert(i, k) - add k at index i
    # A.unshift(x) - add x at front
    # A.push(x) - add x at back

# 5. Deletions
    # A.delete(i) - remove at index i
    # shift() - remove front element
    # pop() - remove back element

# 6. A[start..end] - inclusive and safe

# 7. Membership - A.include? x

# 8. Multidimensional arrays - allowed. Access usual.

ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')

more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length!=10
    next_one = more_stuff.pop
    puts "Adding: #{next_one}"
    stuff.push(next_one)
    puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3...5].join("#")
