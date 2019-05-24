require_relative 'config/environment'

class App < Sinatra::Base

 get '/' do
  erb :user_input
 end

 post '/piglatinize' do
  sentance = PigLatinizer.new
  @piglatin = sentance.piglatinize(params[:user_phrase])
  erb :simulation
 end

end