class Card

  def draw
    template = File.read("_card.html.erb")
    ERB.new(template).result
  end
end