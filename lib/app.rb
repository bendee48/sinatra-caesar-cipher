require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?

class CaesarCipher < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hallo there people. A wee change."
  end
end