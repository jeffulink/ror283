class Person
    puts self
    attr_accessor :name, :age, :skill
    @@number_of_person = 0
    def self.number_of_person
        puts "#{@@number_of_person}"
    end


    def initialize(name, age)
        @name = name
        @age = age
        @@number_of_person += 1
    end

    def greet
      puts "Hello I am #{name}"
    end

    def change_info(n, a)
        self.name = n
        self.age = a
    end

    def print_self
        puts self
    end

    def my_identiry
        sccret_identity
    end

    private
     def sccret_identity
         puts "我是鋼鐵人"
     end
    
end

module Domain
    def talk
    puts "talk talk talk"
    end
end

class Sales < Person
    include Domain
    def initialize(name, age, skill)
        super(name, age)
        @skill = skill
    end

    def talk
        puts "talk talk talk"
    end
    
end

Jeff = Sales.new("jeff",33,"ruby")
Vanessa = Sales.new("vanessa",33,"ruby")

Jeff.age = 30
Vanessa.name = "Va"
# Jeff.change_info("Je",29,"ruby")
# Vanessa.change_info("Va",29,"ruby")

# puts Jeff.name
# puts Vanessa.name
# puts Jeff.print_self
# puts Vanessa.print_self


puts Person.number_of_person

puts Jeff.my_identiry



