# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in,
# with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(speak)
    "*~* #{speak} *~*"
  end
end

mr_unicorn = Unicorn.new("Steve")
p mr_unicorn
p mr_unicorn.say("Hello World")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be
#  dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes
#  to false


#still need to figure out how to make pet bat by default but changeable

class Vampire
  def initialize(pet = "bat")
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end
end

dracula = Vampire.new
p dracula
p dracula.drink
p dracula

damon = Vampire.new("Crow")
p damon


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @stomach_contents = 0
  end

  def eats
    @stomach_contents = @stomach_contents + 1
    if @stomach_contents == 4
      @is_hungry = false
    end
  end
end

trogdor = Dragon.new("Trogdor", "Strongbad", "Red")
p trogdor
trogdor.eats
trogdor.eats
p trogdor
trogdor.eats
trogdor.eats
p trogdor

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases
#  by 1
#  it should have an is_adult attribute (boolean) that is false by default.
#  once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is
#  101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true,
#  if not, false.

class Hobbit
  def initialize(name, disposition, age)
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
    @age = @age + 1
    if @age >= 33
      @is_adult = true
    end
    if @age >= 101
      @is_old = true
    end
  end
end

frodo = Hobbit.new("Frodo", "Adventuruous", 33)
p frodo
sam = Hobbit.new("Sam", "Loyal", 32)
p sam
sam.celebrate_birthday
p sam
bilbo = Hobbit.new("Bilbo", "Cantankerous", 111)
p bilbo
bilbo.celebrate_birthday
p bilbo
