class MainController < ApplicationController


  def main
    @current_prompt = Prompt.current
    @response = Response.new
  end

  def leaderboard
    @current_prompt = Prompt.find_by(current: true)
    @responses = Response.all
  end

end
