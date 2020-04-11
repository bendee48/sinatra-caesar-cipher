require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?

class CaesarCipher < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :views, settings.root + '/app/views'

  get '/' do
    erb :index
  end
end