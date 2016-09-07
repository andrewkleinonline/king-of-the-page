class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    # if user is found (i.e. not nil) and user can be authenticated with bcrypt
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  def mainpage
    @current_prompt = Prompt.find_by(current: true)
  end

end
