class MainController < ApplicationController


  def main
    if !logged_in?
      redirect_to new_session_path
    end
    @current_prompt = Prompt.find_by(current: true)
    @response = Response.new
  end

  def leaderboard
    @current_prompt = Prompt.find_by(current: true)
    @responses = Response.all
  end

end
