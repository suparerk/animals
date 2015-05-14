class Animal
   attr_accessor :name, :legs, :fly, :kind, :type
   def initialize(name, legs, fly, kind, type)
      @name     = name
      @legs     = legs
      @fly      = fly
      @kind     = kind
      @type     = type
   end
end
class Zoo

  def add_animal()

      @animals = Array.new
      @animals << Animal.new("Tommy", 4, false, "mammals", "dog")
      @animals << Animal.new("Katy", 4, false, "mammals", "cat")
      @animals << Animal.new("Birdy", 2, true, "birds", "bird")
      # @animals << Animal.new(@name, @legs, @fly, @kind, @type)
  end

  def search(keyword)
        case keyword[0]
        when "name"
            @animals.each do |a|
              if a.name == keyword[1].capitalize
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs"
              end
            end
        when "legs"
            @animals.each do |a|
              if a.legs.to_i == keyword[1].to_i
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs"
              end
            end
        when "fly"
            @animals.each do |a|
              if a.fly.to_s == keyword[1] && keyword[1] == "true"
                puts "#{a.name} is a #{a.type} with #{a.legs} legs and can fly!"
              elsif a.fly.to_s == keyword[1] && keyword[1] == "false"
                puts "#{a.name} is a #{a.type} with #{a.legs} legs and cannot fly!"
              end
            end
        when "kind"
            @animals.each do |a|
              if a.kind.to_s == keyword[1].to_s
                puts "#{a.name} is a #{a.type} and has #{a.legs} legs  "
              end
            end
        when "type"
            @animals.each do |a|
              if a.type == keyword[1]
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

zoo = Zoo.new
zoo.add_animal
zoo.search(keyword)

# zoo.add_animal("Katy", 4, false, "mammals", "cat")

