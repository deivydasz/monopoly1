require 'sinatra/base'

class MonopolyGame < Sinatra::Base

  enable :sessions

  set :views, "#{settings.root}/../../views"
  set :public_folder , "#{settings.root}/../../assets"


  get '/' do
    board = Board.new
    session[:board] = board
    @top_cards, @side_cards, @bottom_cards = board.get_cards
   erb :index
  end

  post '/roll' do
    
    board = session[:board]
    @top_cards, @side_cards, @bottom_cards = board.get_cards
    new_position = board.players.first.position + Dice.roll
    new_position = 40 if new_position > 40
    board.set_position(player: board.players.first, position: new_position)
    session[:board] = board
    erb :index
  end
 

end

