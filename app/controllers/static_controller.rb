class StaticController < ApplicationController

  def overthrown
    if logged_in? && current_user.king
      render :overthrown
    else
      redirect_to root_path
    end
  end
end
