require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'


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
  
get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end

# get '/' do
#     erb :get_names
# end

# <form method = "post" action = "names">
# 	<input type = "text" autofocus="autofocus" name = "user_names">
# 	<input type = "submit">
# </form>

# <form method = "post" action = "names">
# <%quantity.to_i.times do %>
# 	<input type = "text" name = "usernames[]">
# <%end%>
# 	<input type = submit value = "Submit Names">
# 	</form>