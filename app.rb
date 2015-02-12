# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    erb :"index#{ rand(4) + 1 }"
  end
end
