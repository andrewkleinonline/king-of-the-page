class MainController < ApplicationController


  def main
    @current_prompt = Prompt.find_by(current: true)
    @response = Response.new
  end

end
