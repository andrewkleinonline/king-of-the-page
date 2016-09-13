class OverthrowsController < ApplicationController

  def create
    Prompt.current.overthrows << current_user.overthrows.create
    if Prompt.current.overthrown
      User.update_overthrow_points_success
      current_user.make_king
      render :'static/overthrown'
      # redirect_to overthrown_path
    else
      redirect_to root_path
    end
  end

end
