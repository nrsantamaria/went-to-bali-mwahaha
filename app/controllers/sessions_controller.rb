class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "Welcome back!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing in. Try again."
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are signed out. See you later!"
    redirect_to '/sign_in'
  end

end
