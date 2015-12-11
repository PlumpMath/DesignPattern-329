# models
class Game
  attr_accessor :title
  def initialize(title)
    @title = title
  end
end

class PalGame < Game
  def play
    puts "I am the Pal version of #{@title} and I am running!"  
  end
end

class NtscGame < Game  
  def run
    puts "I am the NTSC version of #{@title} and I am running!"  
  end
end

class Console
end

class PalConsole < Console
  def play_game(game)
    game.play  
  end
end

class NtscConsole < Console
  def run_game(game)
    game.run  
  end
end

# Adapter
class NtscToPalAdatper
  attr_accessor :game
  def initialize(game)
    @game = game
  end
  
  def play
    @game.run  
  end  
end

# main
# console = PalConsole.new
# final_fantasy = NtscGame.new("Final Fantasy")
# adapter = NtscToPalAdatper.new(final_fantasy)
# console.play_game(adapter)

# main 2
# console = PalConsole.new

# class NtscGame < Game  
#   def play
#     run 
#   end
  
#   # alternatively for this simple example we can define an alias:
#   # alias play run
# end 

# final_fantasy = NtscGame.new("Final Fantasy")
# double_dragon = NtscGame.new("Double Dragon")
# console.play_game(final_fantasy)
# console.play_game(double_dragon)


# main 3
console = PalConsole.new

#1 - creating a singleton class
final_fantasy = NtscGame.new("Final Fantasy")

def final_fantasy.play
  run  
end

console.play_game(final_fantasy)


#2 - adding methods opening the singleton class directly
winning_eleven = NtscGame.new("Winning Eleven")

class << winning_eleven
  def play
    run
  end
end

console.play_game(winning_eleven)


#3 - adding methods from a module
thunderforce = NtscGame.new("Thunderforce")

module Foo
  def play
    run
  end
end

thunderforce.extend(Foo)

console.play_game(thunderforce)


#4 - adding methods inside an instance_eval call 
dragons_lair = NtscGame.new("Dragons Lair")

dragons_lair.instance_eval <<EOT
  def play
    run
  end
EOT

console.play_game(dragons_lair)



# Source from: https://github.com/devinterface/design_patterns_in_ruby/tree/master/structural_patterns/adapter