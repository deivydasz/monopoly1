require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  set :views, "#{settings.root}/../../views"
  set :public_folder , "#{settings.root}/../../assets"

  get '/' do
    @top_cards, @side_cards, @bottom_cards = Board.new.get_cards
   erb :index
  end
 

end

