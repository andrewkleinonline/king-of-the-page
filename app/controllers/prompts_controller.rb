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
    redirect_to root_path
    # redirect_to prompt_path(@prompt)
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
