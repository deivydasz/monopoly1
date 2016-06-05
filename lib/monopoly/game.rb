require 'sinatra/base'

class MonopolyGame < Sinatra::Base



  set :views, "#{settings.root}/../../views"
  set :public_folder , "#{settings.root}/../../assets"

  enable :sessions

  get '/' do
    board = Board.new
    sesion[:board] = board
    @top_cards, @side_cards, @bottom_cards = board.get_cards
   erb :index
  end

  post '/roll' do
    
    board = sesion[:board]
    @top_cards, @side_cards, @bottom_cards = board.get_cards
    new_position = boards.players.first.position + Dice.roll
    new_position = 40 if new_position > 40
    board.set_position(player: boards.players.first, position: new_position)
    sesion[:board] = board
    erb :index
  end
 

end

