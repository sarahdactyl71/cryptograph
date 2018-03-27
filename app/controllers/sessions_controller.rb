class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user #user_path(@user)
    else
      render 'new'
      #user doesn't exist or password is incorrect
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
