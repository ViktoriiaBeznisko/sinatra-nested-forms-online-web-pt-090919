require './environment'

  module FormsLab
  class App < Sinatra::Base

  post '/pirate' do
  @pirats = Pirate.new(params[:pirate])
 
  params[:pirate][:ship].each do |details|
    Ship.new(details)
  end
 
  @ships = Course.all
 
  erb :student

  end
end
