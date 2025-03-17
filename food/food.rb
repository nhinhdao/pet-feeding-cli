
# Food classes are defined in the same files since each class is simple without any properties
class CatFood; end
class DogFood; end
class HumanFood; end
class Chicken; end
class Lemon; end
class Milk; end

# This class gives quick access to all food classes
class Food
    attr_reader :name, :type
    
    FOOD = {
        1 => {name: 'CatFood', type: CatFood},
        2 => {name: 'DogFood', type: DogFood},
        3 => {name: 'HumanFood', type: HumanFood},
        4 => {name: 'Chicken', type: Chicken},
        5 => {name: 'Milk', type: Milk},
        6 => {name: 'Lemon', type: Lemon}
    }

    def initialize(option)
        @name = FOOD[option][:name]
        @type = FOOD[option][:type]
    end
end