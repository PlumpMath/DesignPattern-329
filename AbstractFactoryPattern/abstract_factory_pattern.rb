# model
class Game
    attr_accessor :title
    def initialize(title)
        @title = title
    end
end

class Rpg < Game
    def description
        puts "I am a RPG named #{@title}"
    end
end

class Arcade < Game
    def description
        puts "I am a Arcade named #{@title}"
    end
end

# factories
module MyAbstractGameFactory
    def create(title)
        raise NotImplementedError, "You should implement this method"
    end
end

class RpgFactory
    include MyAbstractGameFactory
    def create(title)
        Rpg.new title
    end
end

class ArcadeFactory
    include MyAbstractGameFactory
    def create(title)
        Arcade.new title
    end
end

class GameStore
    def initialize(number_of_games, game_type)
        if game_type == :rpg
            title = 'Final Fantasy'
            game_factory = RpgFactory.new
        elsif game_type == :arcade
            title = 'Double Dragon'
            game_factory = ArcadeFactory.new
        end
        
        @games = []
        number_of_games.times do |i|
            @games << game_factory.create("#{title} #{i+1}")
        end
    end

    def show_games
        @games.each{|game| game.description}
    end
end

# main
game_store = GameStore.new(2, :rpg)
game_store.show_games
game_store = GameStore.new(5, :arcade)
game_store.show_games
