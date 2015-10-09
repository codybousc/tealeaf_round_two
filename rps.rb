#player chooses paper, rock or scissors
#computer chooses paper, rock or scissors
#compare choices (it's either or tie, or paper > rock, rock > scissors, scissors > paper)
#print out winner

#major nouns: player, hand
#major verbs: choose/play, compare hands/select winner

class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Human < Player
  def pick_hand
  end
end

class Computer < Player
  def pick_hand
    choice = Game::CHOICES.keys.sample #don't fully understand this line
  end
end


class Game
  attr_read :player, :computer

  CHOICES = {"r" => "Rock", "p" => "Paper", "s" => "Scissors"}
  def initialize
    @player = Human.new("tbone")
    @computer = Computer.new("R2D2")
  end

  def play
    player.pick_hand
    computer.pick_hand
    compare_hands
  end

end

game = Game.new.play



class Hand

end
