require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/game.rb'

get '/:input1/:input2' do
  input1 = params[:input1]
  input2 = params[:input2]
  result = Game.play(input1, input2)
  @winning_hand = result[0]
  @winner = result[1]
  erb (:result)
end

get '/' do
  erb (:home)
end
