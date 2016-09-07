class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.create(prompt_params)
    @prompt.king = current_user
    redirect_to prompt_path(@prompt)
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
    params.require(:prompt).permit(:content)
  end
end
