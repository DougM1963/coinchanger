require "sinatra"
require_relative "coinchanger.rb"

get '/' do
	erb :home
end

get '/change_given' do
	change = params[:change_given]
    erb :change_given, :locals => {:change => change}
    end

post '/change_given' do
	change = params[:change]
    redirect '/change_given?change=' + change 



end