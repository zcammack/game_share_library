class GamesController < ApplicationController

  get '/games' do
    redirect_if_not_logged_in
    @games = Game.all
    @users = User.all
    erb :"games/index"
  end

  get '/games/new' do
    redirect_if_not_logged_in
    @users = User.all
    erb :"games/show"
  end

  get '/games/:id' do
    binding.pry
    redirect_if_not_logged_in
    @game = Game.find_by_id(params[:id])
    @owner = User.find_by_id(params[:user_id])
    erb :"games/show"
  end

  get '/games' do
      game = current_user.games.build(params)
      if game.save
        redirect "/games#{game.id}"
      else
        redirect "games/new"
      end
    end
  
  get '/games/:id/edit' do
    redirect_if_not_logged_in
    @users = User.all
    @game = Game.find_by_id(params[:id])
    if @game.user.id == current_user.id
      erb :"games/edit"
    else
      redirect "/games"
    end
  end

  patch '/games/:id' do
    @game = Game.find_by_id(params[:id])
    params.delete("_method")
    if @game.update(params)
        redirect "/games/#{@game.id}"
    else
      redirect "games/new"
    end
  end

  delete '/games/:id' do
    @game = Game.find_by_id(params[:id])
    if @game.user.id == current_user.id
      @game.destroy
    end
    redirect "/games"
  end

end
