class MyStuff
    def initialize
        puts "Object created"
        @name = 'Muhammad Sanjar Afaq'
        @age = 2
    end

    attr_writer :name, :age
    def party
        puts "Ye, Ye..."
    end

    def getname
        return x
    end
end

x = MyStuff.new()
x.party()
x.party()
x.name = '234'
puts x.getname

