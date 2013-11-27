class Person
    @@classVariable = "We are all from Cybertron."
    def initialize(name)
        @name = name
    end

    def say(word)
        puts "Hello, my name is #{@name}, #{word}. #{@@classVariable}"
    end
end

p1 = Person.new("Optimus Prime")
p2 = Person.new("Megatron")

p1.say("leader of the Autobots")
p2.say("king of the deceptcons")
