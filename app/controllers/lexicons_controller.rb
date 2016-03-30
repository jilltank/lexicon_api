class LexiconsController < ApplicationController
  before_action :set_lexicon, only: [:show, :update, :destroy]

  # GET /lexicons
  # GET /lexicons.json
  def index
    @lexicons = Lexicon.all

    render json: @lexicons
  end

  # GET /lexicons/1
  # GET /lexicons/1.json
  def show
    render json: @lexicon
  end

  # POST /lexicons
  # POST /lexicons.json
  def create
    @lexicon = Lexicon.new(lexicon_params)

    if @lexicon.save
      render json: @lexicon, status: :created, location: @lexicon
    else
      render json: @lexicon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lexicons/1
  # PATCH/PUT /lexicons/1.json
  def update
    @lexicon = Lexicon.find(params[:id])

    if @lexicon.update(lexicon_params)
      head :no_content
    else
      render json: @lexicon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lexicons/1
  # DELETE /lexicons/1.json
  def destroy
    @lexicon.destroy

    head :no_content
  end

  private

    def set_lexicon
      @lexicon = Lexicon.find(params[:id])
    end

    def lexicon_params
      params.require(:lexicon).permit(:code, :description, :category, :auth_token)
    end
end
