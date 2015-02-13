require 'sinatra'
require 'holidapi'
require 'date'

class MyWebApp < Sinatra::Base
  get '/' do
    @month = params['month'] != '' ? params['month'] : 1
    @year = params['year'] != '' ? params['year'] : 2000
    @day = params['day'] != '' ? params['day'] : 1

    @holidays = HolidApi.get( month: @month, year: @year, day: @day)
    erb :holidays
  end
end
