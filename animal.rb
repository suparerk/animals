class Zoo


  def initialize
    @animal = Array[["Tommy", 4, "can't","mammals", "dog"], ["Katy", 4, "can't","mammals", "cat"], ["Birdy", 2, "can","birds", "bird"]]

  end
  

  def display()
    @animal
  end

  def search(keyword)
    @animal.each {|name, legs, fly, kind, type| puts type}
    case keyword[0]
    when "name"
      puts "Yeahhhh"
      puts keyword

      #name
    when "legs"
      #leg
    when "fly"
      #fly
    when "kind"
      #kind
    when "type"
      #type
    else
      "Keyword is not valid"
    end
      
      
        
      
      

  end




end

 # tommy = Zoo.new("Tommy", 4, false, "mammals", "dog")
 # katy = Zoo.new("Katy", 4, false, "mammals", "cat")
 # birdy = Zoo.new("Birdy", 4, true, "birds", "bird")

puts "Keyword,Value:"
input = gets.chomp.downcase
keyword = input.partition(",")
keyword.delete_at(1)

 zoo = Zoo.new
 zoo.search(keyword)
 # puts zoo.display


 