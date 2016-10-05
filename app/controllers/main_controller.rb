class MainController < ApplicationController


  def main
    @current_prompt = Prompt.current
    @response = Response.new
    PromptDecorator.test_kool
  end

  def leaderboard
    @current_prompt = Prompt.find_by(current: true)
    @responses = Response.all
  end


end
