require 'sinatra'
require 'pry'

get '/' do
  redirect '/boats'
end

get '/boats' do
  sailboats = ["Bavaria", "Pearson"]
  erb :index, locals: { boats: sailboats }
end

get '/boats/:boatname' do
  erb :show, locals: { name: params[:boatname] }
end
