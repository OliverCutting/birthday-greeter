require 'sinatra'
require 'sinatra/reloader'

class BirthdayGreeter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/happy-birthday' do
    @check = BirthdayChecker.new
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb(:happy_birthday)
  end 
end