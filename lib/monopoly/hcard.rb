class Hcard < Card

  def draw 
    template = File.read("html/_hcard.html.erb")
    ERB.new(template).result(self.get_binding)
  end

  def style_class
    'horizontal-card'
  end

 

end