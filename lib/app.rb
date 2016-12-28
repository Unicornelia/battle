require 'sinatra/base'
require_relative 'player'
require_relative 'game'


class Battle < Sinatra::Base
  enable :sessions
  # RR - note to self: do Sinatra sessions work with instance variables?

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.new_game_with_players(player1, player2)
      # RR - why use a class method rather than standard "new" with args?
    redirect '/play'
  end

  before do
    @game = Game.now
    # RR - don't use instance vars here. You have Sinatra sessions enabled - use that!
    # a session is a very simple key-value storage. Can easily store a Game instance
    # in there and then you won't need to force the Game CLASS to keep track of
    # a specific Game INSTANCE that's in progress (and you also won't need this update method)
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
