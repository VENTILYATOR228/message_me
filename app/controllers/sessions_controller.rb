class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in. Welcome to chat, #{user.username}"
      redirect_to root_path
    else
      flash.now[:error] = "There was something wrong with your username or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out. Good bye!"
    redirect_to login_path
  end

end