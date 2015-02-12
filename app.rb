require 'sinatra'
require 'holidapi'
require 'date'

class MyWebApp < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(month: 2)
    erb :holidays
  end

  get '/myBirthday' do
    @holidays = HolidApi.get(month: 2, year: 1993)
    erb :holidays
  end
end
