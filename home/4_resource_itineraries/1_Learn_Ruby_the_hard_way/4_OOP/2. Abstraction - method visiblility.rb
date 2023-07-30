=begin
1. Visibility modifiers.
    - They apply only to methods.
    - There are 3 in Ruby.
        i. Public (default - just like Python)
        ii. Private
        iii. Protected
=end

=begin
2. Syntax for visibility modifiers
    There are two ways:
        i. Block like - just like C++ (without the colon)
        ii. List
    See Examples below
=end

# i. Block
class Food
    def public_method
    end

    private # block-like start

    def bacon
    end

    def orange
    end

    def coconut
    end

end

# ii. List
class Food
    def public_method
    end

    def bacon
    end

    def orange
    end

    def coconut
    end

    private: bacon, orange # List specification
end
