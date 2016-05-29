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

  def draw
    template = File.read("index.html.erb")
    renderer = ERB.new(template)
    File.open('index.html','w').write(renderer.result(self.get_binding))
  end

  def render_top_cards
    html = ''
    cards.each { |card| html << card.draw}
    html
  end

  def render_side_cards
    html = ''

    rows = side_cards.map { |row| CardRow.new(row[0], row[1])}

    rows.each { |row| html << row.draw}
    html
  end

  def get_binding
    binding
  end

end