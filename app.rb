require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'


get '/' do
    quantity = params[quantity]
    erb :number_students, :locals => {:quantity => quantity}
end

post '/number_of_students' do
    quantity = params[quantity]
    erb :get_names, :locals => {:quantity => quantity}
end

get '/get_names?' do
    erb :get_names
end

post '/names' do
    names = params[:user_names].split.map(&:capitalize).join(' ')
    random_names_array = randomizer(names)
    name_pairs = fix(random_names_array)
    erb :get_names_again, :locals => {:name_pairs => name_pairs}
end

# get '/' do
#     erb :get_names
# end