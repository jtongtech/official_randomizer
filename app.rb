require 'sinatra'
require_relative 'random_pair.rb'
# require_relative 'formatter.rb'


get '/' do
    erb :number_students1
end

post '/number_of_students' do
    erb :get_names 
end

get '/get_names?' do
    erb :get_names
end

post '/names' do
    names = params.values
    puts params
    results = randomizer(names)
    "results are #{results}"
end