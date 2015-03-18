class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user.authenticate(params[:user][:password])
      session[:user_token] = @user.auth_token
      redirect_to root_path
    else
      redirect_to sign_in_path, alert: 'Incorrect credentials.'
    end
  end

  def destroy
    current_user.destroy_token!
    session[:user_token] = nil

    redirect_to root_path
  end

end
