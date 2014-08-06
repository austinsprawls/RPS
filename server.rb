require 'sinatra'
require 'pg'
# require 'rack-flash'
require_relative './lib/rps.rb'

set :sessions, true


get "/" do
  RPS.dbi
  erb :index
end

post '/signin' do
  player = RPS.dbi.get_user_by_username(params['username'])
  @params = params
  @password_digest = player.has_password?(params['password'])

  if player.has_password?(params['password'])
    session['sesh_example'] = player.username
    redirect to "/profile/#{player.id}"
  else
     erb :index


  end
  
end

post '/signup' do
  @signup_params = params
  if params[:password] == params[:password_conf]
    player = RPS::Player.new(username: params["username"])
    player.update_password(params["password"])
    RPS.dbi.persist_user(player)
    session["sesh_example"] = player.username
    # redirect to '/'
    erb :index
  else 
    redirect to '/signup'
  end
end

get '/signout' do
  session.clear
  redirect to '/'
end

get '/profile/:id' do
  
end