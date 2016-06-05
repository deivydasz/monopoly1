class Card

  attr_accessor :players

  def initialize
    @players = []

  end

  def style_class
    "simple-card #{player_style}"
  end

  def midle_text
    'SimpleCard'
  end

 

  def set_player(player:)
    players << player
  end

  def remove_player(player:)
    players.delete_if { |element| element == player }
  end

  

end