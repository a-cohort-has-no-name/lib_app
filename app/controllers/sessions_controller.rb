class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      login(user)
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

end
