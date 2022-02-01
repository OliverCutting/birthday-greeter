require 'sinatra'
require 'date'
require 'sinatra/reloader' if development?

get '/' do
  erb(:index)
end

post '/happy-birthday' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  erb(:happy_birthday)
end 