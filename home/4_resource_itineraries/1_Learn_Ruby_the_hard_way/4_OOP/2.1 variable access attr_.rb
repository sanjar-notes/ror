=begin
1.
- Ruby applies public, private and protected only to methods.
- Variables are by default inaccessible.
- We always have to write getters and setters
=end

=begin
2.
There's a shortcut however, for accessing variables.
There are three modes to this shortcut
    a. attr_read - makes variables read-only
    b. attr_write - makes variable write-only
    c. attr_accessor - makes variables both readable/writable
        attr_accessor creates both 'a' and 'b'


How it works - Using this basically creates methods
     - getters/setters or both. Without us having to code.

    -- Syntax (Inside) --
        attr_read  :var1, :var2

        - Colon is part of the variable.
        - And no @ symbol needed (for access outside too).
        This can be kept anywhere in the class, but outside of methods.
    -- Syntax (Outside) --
        dot operator (without colons)
=end

class Car
    def initialize(name, speed = 20)
        @name = name
        @speed = speed
    end

    attr_accessor :name
    attr_reader :speed
    attr_writer :speed
end

x = Car.new('Benz', 100)
x.speed = 2

