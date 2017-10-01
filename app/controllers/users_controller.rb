class UsersController < ApplicationController

  # before_action :authenticate_user!, only: [:show]

  def index
    @users = User.all
  end

  def new
    render :new #optional, default behavior
  end

  def create
    user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]
    )
    login(user) #login our user after creating
    redirect_to user_path(user) #go to show page
  end

  def show
    @user = User.find(params[:id])
  end

end
