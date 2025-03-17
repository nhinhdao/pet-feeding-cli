#import all food classes
require './food/food'


class Pet
    attr_reader :name

    def initialize(name)
        @name = name
        @favoriteFood = []
    end

    def eat(food)
        puts "\nGiving #{name} #{food.name}."
        puts "\n"

        # pet eats favorite food
        if @favoriteFood.include?(food.type)
            # make sound 3 times 
            3.times {make_sound}
            puts "#{name} loves it.\n"
        # foods pet doesn't like
        else
            # make sound once
            make_sound()
            puts "#{name} doesn't seem to like it.\n"
        end
    end

    private

    def make_sound
        puts "Nom nom!"
    end
end