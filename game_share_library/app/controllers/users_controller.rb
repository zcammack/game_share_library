class UsersController < ApplicationController

  get '/users/signup' do
    erb :"users/signup"
  end

  post '/users' do
    @user = User.new(params)
    
    if @user && @user.save
      session[:user_id] = @user.id
      redirect "/games"
    else
      erb :"users/signup"
    end
  end

  get '/home' do
    @my_games = Game.where(user_id: current_user.id)
    erb :"users/home"
  end

end