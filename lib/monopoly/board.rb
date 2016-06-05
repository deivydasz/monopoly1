class Board 

  attr_accessor :cards, :side_cards

  SIZE = 10

  def initialize
    @top_cards = [
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

    @bottom_cards = [
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
  end

  def get_cards
    return @top_cards, @side_cards, @bottom_cards
  end

 

end