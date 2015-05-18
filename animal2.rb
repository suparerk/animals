class Animal
   attr_accessor :name, :type, :legs
   def initialize(name, type)
      @name     = name
      @legs     = legs
      @type     = type
   end
end

class Mammal < Animal
  def initialize(name, type, legs = 4)
      @name     = name
      @legs     = legs
      @type     = type
  end
end
class Bird < Animal
  attr_accessor :fly
  def initialize(name, type, legs = 2)
      @fly      = true
      @name     = name
      @legs     = legs
      @type     = type
  end
end

class Zoo
  def initialize(animals)

      @animals = animals
  end
  

  def search(key, value)

      @animals.each do |animal|
        if key != "fly" && key != "class"
          if animal.send(key).to_s == value.to_s
            puts animal
          end
        elsif key == "fly"
            if value.to_s == "true"
              puts animal unless !animal.instance_of? Bird
            elsif value.to_s == "false"
              puts animal unless animal.instance_of? Bird  
            end           
        elsif key == "class"
            if value == "mammal"
              puts animal  unless !animal.instance_of? Mammal

            elsif value == "bird"
              puts animal  unless !animal.instance_of? Bird
            end
        end
      end
  end
end


print "Keyword,Value :"
input = gets.chomp.downcase
keyword = input.partition(",")
keyword.delete_at(1)


animals = [Mammal.new("tommy", "dog"), Mammal.new("katy", "cat"), Bird.new("birdy", "bird"), Mammal.new("John", "Human", 2)]
zoo = Zoo.new(animals)
zoo.search(keyword[0], keyword[1])
# zoo.display






