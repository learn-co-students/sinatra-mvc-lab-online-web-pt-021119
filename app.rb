require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/piglatinize' do
    @newphrase = PigLatinizer.new.piglatinize(params["user_phrase"])

    #params => {"user_phrase" => "whatever you type in in the form"}

    erb :piglatinize
  end

end
