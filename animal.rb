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

  def search(keyword, value)
        case keyword
        when "name"
            @animals.each do |a|
              if a.name == value.capitalize
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs"
              end
            end
        when "legs"
            @animals.each do |a|
              if a.legs.to_i == value.to_i
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs"
              end
            end
        when "fly"
            @animals.each do |a|
              if value == "true"
                if a.instance_of? Bird
                  puts "#{a.name} is a #{a.type} with #{a.legs} legs and can fly!"
                end
              elsif !a.instance_of? Bird

                  puts "#{a.name} is a #{a.type} with #{a.legs} legs and cannot fly!"
              end
             end
        when "kind"
            @animals.each do |a|
              if value == "mammals"
                if a.instance_of? Mammal
                  puts "#{a.name} is a #{a.type} and has #{a.legs} legs  "
                end
              elsif value == "birds"
                  puts "#{a.name} is a #{a.type} and has #{a.legs} legs  "  unless !a.instance_of? Bird
              end
             end
        when "type"
            @animals.each do |a|
              if a.type == value
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs"
              end
            end
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
zoo.send( :search, keyword[0], keyword[1])








