class Card

  def draw
    template = File.read("html/_card.html.erb")
    ERB.new(template).result(self.get_binding)
  end

  def style_class
    'simple-card'
  end

  def midle_text
    'name'
  end

  def get_binding
    binding
  end

end