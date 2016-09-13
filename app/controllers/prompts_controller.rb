class PromptsController < ApplicationController
  def index
    @prompts = Prompt.where(pending: false, current: false)
  end

  def new
    if !current_user.king
      redirect_to root_path
    end
    @prompt = Prompt.new

  end


  def create
    @prompt = Prompt.create(prompt_params)
    User.where(admin: true).each do |user|
      AdminMailer.admin_email(user).deliver
    end
    redirect_to root_path
  end

  def show
    @prompt = Prompt.find(params[:id])
  end

  def approve_prompt
    @prompt = Prompt.find(params[:id])
    @prompt.set_current
    @prompt.update(pending: false)

    @prompt.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def prompt_params
    params.require(:prompt).permit(:content, :image, :king_id, :response_type)
  end
end
