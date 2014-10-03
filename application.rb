require 'sinatra'

class StyleInjectionApp < Sinatra::Base
  get '/' do
    erb :application
  end
end

