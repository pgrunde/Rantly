class RegistrationsController < ApplicationController

  skip_before_filter :ensure_authenticated_user

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.bio = params[:user][:bio]
    @user.rant_freq = params[:rant_freq]
    @user.password = params[:user][:password]

    if @user.save
      flash[:notice] = "Thanks for registering!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.bio = params[:user][:bio]
    @user.rant_freq = params[:rant_freq]

    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end
end