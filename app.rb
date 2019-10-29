require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @rest = Restaurant.all
  erb :index
end

get "/restaurant/:id" do
  @rest = Restaurant.find(params[:id])
  erb :show
end

post "/create" do
  restaurant = Restaurant.new(name: params[:name], address: params[:address])
  restaurant.save
  redirect to('/')
end
