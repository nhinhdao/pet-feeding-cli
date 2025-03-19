#ruby
#!/usr/bin/env ruby
=begin 
Instruction to run the program:

1. Open terminal or command prompt in your computer

2. Check README.md for instruction to install Ruby programming language

3. Run the file by running the command: `ruby main.rb`

4. Follow the prompt and provide inputs
=end

#import all files
require_relative 'food/food'
require_relative 'pets/cat'
require_relative 'pets/dog'

ODIE = Dog.new
GARFIELD = Cat.new

def switch_pet(pet)
    pet.is_a?(Cat) ? ODIE : GARFIELD
end

# promt the pet
def summon_pet
    option = nil

    loop do
        puts "\nCall your pet:"
        puts "1. Garfield"
        puts "2. Odie"

        option = gets.chomp.strip

        if option != '1' && option != '2'
            puts "\nHuh, who is that? Let's try again."
            next
        end
        break
    end
    option == '1' ? GARFIELD : ODIE
end

# prompt user to choose food and create food instance
def get_food
    option = nil

    loop do
        puts "\nChoose food:"
        puts "1. CatFood"
        puts "2. DogFood"
        puts "3. HumanFood"
        puts "4. Chicken"
        puts "5. Milk"
        puts "6. Lemon\n"

        option = gets.chomp.to_i

        if option < 1 || option > 6
            puts "\nThat is not an option. Let's try again."
            next
        end
        break
    end
    Food.new(option)
end

# promt user to feed more
def more_feeding(pet)
    otherPet = switch_pet(pet)
    option = nil

    loop do
        puts "\nHow do you want to continue?"
        puts "1. Give #{pet.name} more food."
        puts "2. Let's feed #{otherPet.name}."
        puts "3. All done for today."

        option = gets.chomp.to_i

        if option < 1 || option > 3
            puts "\nNot a valid choice. Try again!\n"
            next
        end
        break
    end
    option
end

# Begin interaction
def begin_interaction
    puts "\nTime to feed your pets: Odie the Dog and Garfield the Cat.\n"

    loop do
        # summon pet
        pet = summon_pet
        pet.show_affection

        loop do
            # get food
            food = get_food
            # serve food
            pet.eat(food)

            # ask if user want to continue feeding the same pet
            option = more_feeding(pet)

            case option
            when 1 then next
            when 2
                pet = switch_pet(pet)
                pet.show_affection
                next
            else
                puts "\nGood bye!\n"
                exit
            end
            break
        end
    end
end

begin_interaction