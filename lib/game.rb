class Game

  attr_reader :player1, :player2, :punisher, :sufferer

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @punisher = @player2
    @sufferer = @player1
  end

  def attack(player)
    player.receive_damage
    taking_turns
  end

  def taking_turns
    if @punisher == @player1
      @punisher = @player2
      @sufferer = @player1
    else
      @punisher = @player1
      @sufferer = @player2
    end
  end

end
