class Dragon
    define_method(:foo) { puts "what" }


    ['a', "fire", "end"].each do |x|
        define_method(x) { puts x }
    end
end

dragon = Dragon.new
dragon.foo
dragon.fire
