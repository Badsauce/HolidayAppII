# app.rb
require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get
    erb :holidays
  end
end
