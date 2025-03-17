require_relative 'pet'

class Dog < Pet
    def initialize
        super("Odie")
        @favoriteFood = [CatFood, DogFood, HumanFood, Chicken]
    end

    def show_affection
        puts "\nWoof. #{@name} tippy taps happily."
    end

    private 

    def make_sound
        puts "WOOF"
    end
end