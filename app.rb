require 'sinatra/base'
require './lib/chit'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/chit' do
    chit = params[:chit]
    Chit.create(chit)
    redirect '/chits'
  end

  get '/chits' do
    @chits = Chit.all
    erb :chit
  end

  run! if app_file == $0
end
