class SeededsentencesController < ApplicationController
  before_action :set_seededsentence, only: [:show, :update, :destroy]

  # GET /seededsentences
  def index
    @seededsentences = Seededsentence.all

    render json: @seededsentences
  end

  # GET /seededsentences/1
  def show
    render json: @seededsentence
  end

  # POST /seededsentences
  def create
    @seededsentence = Seededsentence.new(seededsentence_params)

    if @seededsentence.save
      render json: @seededsentence, status: :created, location: @seededsentence
    else
      render json: @seededsentence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seededsentences/1
  def update
    if @seededsentence.update(seededsentence_params)
      render json: @seededsentence
    else
      render json: @seededsentence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seededsentences/1
  def destroy
    @seededsentence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seededsentence
      @seededsentence = Seededsentence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seededsentence_params
      params.require(:seededsentence).permit(:active)
    end
end
