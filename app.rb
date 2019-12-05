require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end 
  
  post '/piglatinize' do
    @piglatinzed = PigLatinizer.new(params[:user_input])
  end  
  
end