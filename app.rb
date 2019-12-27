require './environment'

  module FormsLab
  class App < Sinatra::Base

  post '/pirate' do
  @pirat = Pirate.new(params[:pirate])
 
    params[:pirate][:ship].each do |details|
    Ship.new(details)
  end
 
    @ships = Course.all
       erb :student
    end
  end
end
