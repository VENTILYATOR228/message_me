class UsersController < ApplicationController

  def show
    @users = User.find(params[:id])
  end

  def index

  end

  def new

  end

  def edit

  end

  def update

  end

  def create

  end

  def destroy

  end

end