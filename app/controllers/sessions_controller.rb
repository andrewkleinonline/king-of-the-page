class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    auth = request.env['omniauth.auth']
    User.create_from_omniauth(auth)
    user = User.find_by(facebook_user_id: auth[:uid])
    # get the user infor from request.env['omniauth.auth']
    # use it to find or create that user in your DB
    # "log in" that user session[:id] = user.id

    # user = User.find_by(username: params[:user][:username])
    # if user is found (i.e. not nil) and user can be authenticated with bcrypt
    session[:user_id] = user.id
    redirect_to root_path
    # else
    #   redirect_to new_session_path
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  def mainpage
    @current_prompt = Prompt.find_by(current: true)
    @response = Response.new
  end

end
