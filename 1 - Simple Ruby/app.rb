puts "Ilse"
n = 1+2
puts "age #{n}"

class Person
    attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

p = Person.new
p.name = "Ilse"
p.age = 21

puts p.inspect