# 1. In Ruby, objects are more important than classes.

# 2. Classes specify some behavior, but an object, once made,
# can learn new behavior (indepedent of the class).

# 3. As objects may learn new behaviors, we are always 'sending'
# some message (method name mostly) to an object.
# The object then responds by doing some action.

# 4. While talking to objects, we can send in some
# payload (arguments).

# 5. The knowledge to do action MUST reside in the object.
# Argumnents are not this, mostly.

def Empty! x
   x.empty?
end

y = [1, 2, 3].append(2, 3, 4)
puts Empty!(y)
