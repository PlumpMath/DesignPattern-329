module Originator
    def saves
        @saves ||= {}
    end

    def save key
        puts "saving key #{key}"
        saves[key] = Marshal.dump self
    end

    def restore key
        puts "restoring key #{key}: #{saves[key]}"
        include_state Marshal.load(saves[key]) 
        # if saves[key] != nil
    end

    def include_state other
        other.instance_variables.each { |var|
            instance_variable_set(var, other.instance_variable_get(var))  \
                    if var != "@saves"
        }
    end
end

class Example
    include Originator
    attr_accessor :name, :color

    def initialize name, color
        @name = name
        @color = color
    end
end

# main
ex = Example.new "Matt", "Blue"
puts "My name is #{ex.name}, color is #{ex.color}"
ex.save :now

ex.name = "John"
ex.color = "Green"
puts "Now, my name is #{ex.name}, color is #{ex.color}"
ex.save :later

ex.restore :now
puts "After restoring, my name is #{ex.name}, color is #{ex.color}"
ex.restore :later
puts "Second time restore, my name is #{ex.name}, color is #{ex.color}"

