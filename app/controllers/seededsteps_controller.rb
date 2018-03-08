class SeededstepsController < OpenReadController
  before_action :set_seededstep, only: [:show, :update, :destroy]

  # GET /seededsteps
  def index
    @seededsteps = Seededstep.all

    render json: @seededsteps
  end

  # GET /seededsteps/1
  def show
    render json: @seededstep
  end

  # POST /seededsteps
  def create
    @seededstep = Seededstep.new(seededstep_params)

    if @seededstep.save
      render json: @seededstep, status: :created, location: @seededstep
    else
      render json: @seededstep.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seededsteps/1
  def update
    if @seededstep.update(seededstep_params)
      render json: @seededstep
    else
      render json: @seededstep.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seededsteps/1
  def destroy
    @seededstep.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seededstep
      @seededstep = Seededstep.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seededstep_params
      params.require(:seededstep).permit(:redact, :sentenceindex, :hopemodifier, :wisdommodifier)
    end
end
