require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinizer = PigLatinizer.new
    @new_phrase = @pig_latinizer.piglatinize(params[:user_phrase])
    erb :piglatinized
  end
end
