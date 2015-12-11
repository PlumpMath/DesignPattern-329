class PrototypeManager
    def initialize
        @prototypes = {}
    end

    def register key, prototype
        raise IndexError, "a prototype is already \ 
                assigned to this key: #{key}" if @prototypes.include? key
        @prototypes[key] = prototype
    end

    def unregister key
        raise IndexError, "this key is not \ 
                registered: #{key}" if !@registers.include? key
        @prototypes.delete key
    end

    def get key
        @prototypes[key].deep_copy
    end
end

class Object
    def deep_copy
        # The marshaling library converts collections of Ruby objects into a byte stream
        Marshal.load(Marshal.dump(self))
    end
end

class Note
    attr_accessor :duration
    def initialize duration
        @duration = duration
    end
end

class Clef
    attr_accessor :type
    def initialize type
        @type = type
    end
end

manager = PrototypeManager.new
manager.register(:half_note, Note.new(2))
manager.register(:full_note, Note.new(4))
manager.register(:treble, Clef.new("high pitch"))
manager.register(:bass, Clef.new("low pitch"))

clef = manager.get :bass
puts "clef's type: #{clef.type}"
note = manager.get :half_note
puts "note's duration: #{note.duration}"
note.duration = 6
puts "note's duration: #{note.duration}"
other_note = manager.get :half_note
puts "nother_ote's duration: #{other_note.duration}"
