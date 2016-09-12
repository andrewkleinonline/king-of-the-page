class StaticController < ApplicationController

def overthrown
  if logged_in?
    if current_user.king
      render :overthrown
    end
  end
  redirect_to root_path
end

end
