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

  def vote
    @response = Response.find(params[:id])
    @response.update_votes(current_user)
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json {render json: {response_id: @response.id, upvote_class: @response.upvote_class(current_user), votes_number: @response.votes_number(current_user)}}
    end
    # redirect_to root_path
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
    params.require(:response).permit(:content,:prompt_id,:subject_id,:image)
  end
end
