require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "paris"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    sessions[:item] = params[:item]
    @session = sessions 
    erb :checkout
  end
  
end