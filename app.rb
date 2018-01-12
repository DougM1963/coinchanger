require "sinatra"
require_relative "coinchanger.rb"

get '/' do
	erb :home
end

post '/change_given' do
	change_given = params[:change_given]
    redirect '/change_given?change_given=' + change_given
end

get '/change_given' do
	change = params[:change_given]
    erb :change_given, :locals => {:change => change}
    end
