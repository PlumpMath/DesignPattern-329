# class User
#   def initialize name
#     @name = name
#   end
# end

# class Manager
#   def initialize name
#     @name = name
#   end
# end


# class UserPaymentService
#     def pay *args
#         railse ForbiddenAccessError, "User cannot perform payments"
#     end
# end

# class ManagerPaymentService
#     def pay user, amount
#         puts "Manager  " + amount
#     end
# end

# class PaymentServiceFactory
#     def self.for user
#         if user.is_a? User
#             return UserPaymentService.new
#         elsif user.is_a? Manager
#             return ManagerPaymentService.new
#         end
#     end
# end

class Duck
    def initialize(name)
        @name = name
    end

    def eat
        puts "Duck #{@name} is eating."
    end

    def speak
        puts "Duck #{@name} says Quack!"
    end

    def sleep
        puts "Duck #{@name} sleeps quietly."
    end
end

class Frog
    def initialize(name)
        @name = name
    end

    def eat
        puts "Frog #{@name} is eating."
    end

    def speak
        puts "Frog #{@name} says Crooooaaaak!"
    end

    def sleep
        puts "Frog #{@name} doesn't sleep; he croaks all night."
    end
end

class Pond
    def initialize(number_animals)
        @animals = []
        number_animals.times do |i|
            animal = new_animal("Animal#{i}")
            @animals << animal
        end
    end

    def simulate_one_day
        @animals.each do |animal|
            animal.eat
            animal.speak
            animal.sleep
        end
    end
end

class DuckPond < Pond
    def new_animal(name)
        Duck.new(name)
    end
end

class FrogPond < Pond
    def new_animal(name)
        Frog.new(name)
    end
end


frog_pond = FrogPond.new(3)
frog_pond.simulate_one_day

duck_pond = DuckPond.new(4)
duck_pond.simulate_one_day