class OverthrowsController < ApplicationController

  def create
    Prompt.current.overthrows << current_user.overthrows.create
    if Prompt.current.overthrown
      current_user.make_king
      redirect_to overthrown_path
    else
      redirect_to root_path
    end
  end

end
