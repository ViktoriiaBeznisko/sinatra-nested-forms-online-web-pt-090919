require './environment'

  module FormsLab
  class App < Sinatra::Base

  post '/pirate' do
  @pirate = Student.new(params[:student])
 
  params[:student][:courses].each do |details|
    Course.new(details)
  end
 
  @courses = Course.all
 
  erb :student

  end
end
