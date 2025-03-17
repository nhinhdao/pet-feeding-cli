require_relative 'pet'

class Cat < Pet
    def initialize
        super("Garfield")
        @favoriteFood = [CatFood, Chicken, Milk]
    end

    def show_affection
        puts "\nMeow. #{@name} rubs his face on you."
    end

    private

    def make_sound
        puts "MEOW"
    end

end