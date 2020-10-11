class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login'
  end

  post '/login' do 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/home"
    else
      flash[:notice] = "This email or password is invalid. Please try again."
      redirect "/login"
    end
  end

  get '/logout' do
    session.clear
    redirect '/login'
  end

end
