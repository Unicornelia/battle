require 'sinatra/base'
require_relative 'player'
require_relative 'game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.new_game_with_players(player1, player2)
    redirect '/play'
  end

  before do
    @game = Game.now
  end

  get '/play' do
    erb :play
  end

  get '/hit' do
    @game.attack(@game.punisher)
    erb :hit
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
