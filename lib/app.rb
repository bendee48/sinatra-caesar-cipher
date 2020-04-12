# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
require_relative 'caesar_cipher'

class CaesarApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :root, 'lib/app'

  @@message = ''

  get '/' do
    erb :index
  end

  post '/' do
    message = params[:message]
    number = params[:num_offset]
    @@message = CaesarCipher.encrypt(message, number.to_i)
    redirect '/'
  end
end
