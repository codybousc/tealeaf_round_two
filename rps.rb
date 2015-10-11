#player chooses paper, rock or scissors
#computer chooses paper, rock or scissors
#compare choices (it's either or tie, or paper > rock, rock > scissors, scissors > paper)
#print out winner

#major nouns: player, hand
#major verbs: choose/play, compare hands/select winner

class Hand
  include Comparable

  attr_reader :value

  def initialize(v)
    @value = v
  end

  def <=>(another_hand)
    if @value == another_hand.value
      0
    elsif (@value == 'p' && another_hand.value == 'r') || (@value == 'r' && another_hand.value == 's') || (@value == 's' && another_hand.value == 'p')
      1
    else
      -1
    end
  end
end

class Player
  attr_accessor :hand
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def to_s
    "#{name} currently has a choice of #{self.hand.value}"
  end

end

class Human < Player
  def pick_hand
    begin
      puts "Pick one: (p, r, s)"
      c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.hand = Hand.new(c)
  end
end

class Computer < Player
  def pick_hand
    self.hand = Hand.new(Game::CHOICES.keys.sample) #don't fully understand this line
  end
end


class Game
  attr_reader :player, :computer

  def compare_hands
    if player.hand == computer.hand
      puts "It's a tie!"
    elsif player.hand > computer.hand
      puts "#{player.name} wins!"
    else
      puts "#{computer.name} wins!"
    end
  end

  CHOICES = {"r" => "Rock", "p" => "Paper", "s" => "Scissors"}
  def initialize
    @player = Human.new("tbone")
    @computer = Computer.new("R2D2")
  end

  def play
    player.pick_hand
    computer.pick_hand
    compare_hands
    puts player
    puts computer
  end
end

game = Game.new.play



class Hand

end
