class Pet
    attr_accessor :name, :age
    def say
        puts "I am #{name}, I am #{age} years old."
    end
end

class Puppy < Pet
    def say
        puts "Woooo!!!"
    end
end

class Kitty < Pet
    def say
        puts "Meow~~"
    end
end

pets = [Puppy.new, Kitty.new]
pets.each do |pet|
    pet.say
end

puts 'filtered.....'

filterPets = pets.find_all{|pet| pet.class == Kitty}
filterPets.each do |pet|
    pet.say
end
#p = Pet.new()
#p.name = 'Kitty'
#p.age = 2
#p.say
