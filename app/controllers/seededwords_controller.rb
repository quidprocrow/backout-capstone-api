class SeededwordsController < ProtectedController
  before_action :set_seededword, only: [:show, :update, :destroy]

  # GET /seededwords
  def index
    @seededwords = Seededword.all

    render json: @seededwords
  end

  # GET /seededwords/1
  def show
    render json: @seededword
  end

  # POST /seededwords
  def create
    @seededword = Seededword.new(seededword_params)

    if @seededword.save
      render json: @seededword, status: :created, location: @seededword
    else
      render json: @seededword.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seededwords/1
  def update
    if @seededword.update(seededword_params)
      render json: @seededword
    else
      render json: @seededword.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seededwords/1
  def destroy
    @seededword.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seededword
      @seededword = Seededword.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seededword_params
      params.require(:seededword).permit(:text, :clickable, :redacted)
    end
end
