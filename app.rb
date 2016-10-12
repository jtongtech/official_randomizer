require 'sinatra'
# require_relative 'random_pair.rb'
# require_relative 'formatter.rb'


get '/' do
    erb :number_students1
end

post '/number_of_students' do
    quantity = params[:quantity]
    erb :get_names, :locals => {:quantity => quantity}
end

get '/get_names?' do
    quantity = params[:quantity]
    erb :get_names, :locals => {:quantity => quantity}
end

post '/names' do
    names = params[:user_names]
    results = randomizer(names)
    "results are #{results}"
end