class Board 

  attr_accessor :cards, :side_cards

  SIZE = 10

  def initialize
    @cards = [
      JailCard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      FreeParkingCard.new
      
    ]
    @side_cards = [
      [Hcard.new, Hcard.new], 
      [Hcard.new, Hcard.new],
      [Hcard.new, Hcard.new],
      [Hcard.new, Hcard.new],
      [Hcard.new, Hcard.new],
      [Hcard.new, Hcard.new],
      [Hcard.new, Hcard.new],
      [Hcard.new,  Hcard.new]
    ]
  end

  def get_top_cards
    @cards
  end

 

end