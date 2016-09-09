class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all
  end

  def new
    if current_user.king
      @prompt = Prompt.new
    else
      redirect_to root_path
    end
  end

  def create
    @prompt = Prompt.create(prompt_params)
    @prompt.king = current_user

    User.where(admin: true).each do |user|
      AdminMailer.admin_email(user).deliver
    end

    redirect_to root_path
  end

  def show
    @prompt = Prompt.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def prompt_params
    params.require(:prompt).permit(:content, :image)
  end
end
