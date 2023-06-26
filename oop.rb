# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say(phrase)
        "*~* #{phrase} *~*"
    end
end

lily = Unicorn.new("Lily")

p lily.color
p lily.say("I'm the coolest unicorn around")
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

steve = Vampire.new("Steve")
vamp_with_cat = Vampire.new("Vamp", "cat")

p steve.name, steve.pet, steve.thirsty
p vamp_with_cat.pet

steve.drink
p steve.thirsty
#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :times_eaten
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @times_eaten = 0
    end

    def eat
        if @times_eaten == 3
            @is_hungry = false
            @times_eaten = 0
        else
            @times_eaten += 1
        end
    end
end

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        if @name == "Frodo"
            @has_ring = true
        else
            @has_ring = false
        end
    end

    def celebrate_birthday
        @age += 1
        if age > 32 && age < 100
            @is_adult = true
        elsif age > 100
            @is_old = true
        end
    end
end
