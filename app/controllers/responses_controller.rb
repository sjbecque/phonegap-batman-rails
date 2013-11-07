class ResponsesController < ApplicationController
  respond_to :json
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
   @responses = Message.response_messages
   render json: @responses
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    render json: @response
  end

  # GET /messages/new
  def new
    @response = Message.new(content: Faker::Lorem.sentences(rand(4) + 1).join)
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @response = Message.new(message_params)

    if @response.save
      render json: @response
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    if @response.update(message_params)
      head :no_content
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @response.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_message
    @response = Message.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_params
    params.require(:response).permit(:content, :user_id, :message_id)
  end
end