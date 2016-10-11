require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'


get '/' do
    quantity = params[quantity]
    erb :number_students, :locals => {:quantity => quantity}
end

post 'number_students' do
    quantity = params[quantity]
    erb :number_students, :locals => {:quantity => quantity}
    redirect '/get_names?quantity' + quantity
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