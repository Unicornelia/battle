class Game

  def self.new_game_with_players(player1, player2)
    @game = Game.new(player1, player2)
    @game
  end

  def self.now
    @game
  end


  attr_reader :game, :player1, :player2, :punisher, :sufferer
  # RR - do these really need to be exposed? Where are they used outside of Game?

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @punisher = @player2
    @sufferer = @player1
    # RR - do @punisher and @sufferer need to be set on initialize?
    # is this the responsibility of initialize?
    # in fact, are these vars really necessary at all?
    # They just point to already existing player vars
  end

  def attack(player)
    player.receive_damage
    switch_players
  end

  def switch_players
    # RR - can you think of a more semantic name for this method?
    # ideally we want a verb that tells us exactly what's going on
    # e.g. "switch players"
    if @punisher == @player1
      @punisher = @player2
      @sufferer = @player1
    else
      @punisher = @player1
      @sufferer = @player2
    end
    # RR - can you think of a more elegant way of expressing this?
    # there's a quite a lot of repetition here
  end

end
