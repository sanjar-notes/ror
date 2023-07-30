=begin

1. Class Syntax

Class
   code
end
=end

=begin
2. Encapsulation
   There are two kinds of variables
    - Class (or static), have @@ at the beginning, at all times.
    - Instance data (or non-static), are declared in the constructor

   There are two kinds of methods
    - Class (or static), name has 'self.' before them
    - Instance method(or non-static), name is normal.

    - As usual, class variables/methods are shared by all objects.
    - And class methods cannot write to instance variables.
=end

=begin
3. Constructor Syntax.
   Just a method named 'initialize'

=end

=begin
4. Instantiation Syntax
   x = ClassName.new([params])
=end

class Wizard
   @@count = 0
   def initialize(name)
      @@count+=1
      @name = name
   end

   def countTotal
      @@count
   end

   def nameC?(newName)
      @@count = 0
      @@count
   end

   def getName
      @name
   end
end

harry = Wizard.new('Harry Potter')
ron = Wizard.new('Ronald Weasley')

puts harry.nameC? 'Hello'
puts harry.getName
puts harry.countTotal
