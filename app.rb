require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    
    erb :user_input 
  end
  
  post '/piglatinize' do 
    x = PigLatinizer.new 
    @piglat = x.pig(params[:user_phrase])
    
    erb :piglatinize
  end
  
end