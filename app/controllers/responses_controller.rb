class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def new
    @response = Response.new
  end

  def create

    @response = Response.new(response_params)
    if @response.save
      redirect_to root_path
    else
      flash.now[:notice] = "Response can not be saved"
      render :new
    end
    # @response.king = current_user
    # redirect_to response_path(@response)
  end

  # def show
  #   @response = Response.find(params[:id])
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

  private
  def response_params
    params.require(:response).permit(:content,:prompt_id,:subject_id)
  end
end
