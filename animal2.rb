class Animal
   attr_accessor :name, :legs, :kind, :type
   def initialize(name, legs, type)
      @name     = name
      @legs     = legs
      @type     = type
   end
end

class Mammal < Animal

end
class Bird < Animal

end

class Zoo
  def initialize(animals)

      @animals = animals

  end
  def search2(keyword, value)
      case keyword
      when "name"
              @animals.find  {|x| x.name == "value"}

                puts "#{x.name} is a #{x.type} and has #{x.legs} legs"
      when "legs"
      when "fly"
      when "kind"
      when "type"
      else
        puts "Keyword is not valid"
      end

  end
end


print "Keyword,Value :"
input = gets.chomp.downcase
keyword = input.partition(",")
keyword.delete_at(1)


animals = [Mammal.new("Tommy", 4, "dog"), Mammal.new("Katy", 4, "cat"), Bird.new("Birdy", 2, "bird")]

zoo = Zoo.new(animals)
# zoo.send( :search, keyword[0], keyword[1])
zoo.send( :search2, keyword[0], keyword[1])







