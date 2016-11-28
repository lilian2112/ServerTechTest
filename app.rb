require 'sinatra/base'

class ServerTechTest < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/set' do
    key = params.keys.first
    value = params.values.first
    session[key] = value
  end

  get '/get' do
    value = session[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
