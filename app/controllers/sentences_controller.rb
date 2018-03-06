class SentencesController < ProtectedController
  before_action :set_sentence, only: [:show, :update, :destroy]

  # GET /sentences
  def index
    @sentences = current_user.setences

    render json: @sentences
  end

  # GET /sentences/1
  def show
    render json: @sentence
  end

  # POST /sentences
  def create
    @sentence = Sentence.new(sentence_params)

    if @sentence.save
      render json: @sentence, status: :created, location: @sentence
    else
      render json: @sentence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sentences/1
  def update
    if @sentence.update(sentence_params)
      render json: @sentence
    else
      render json: @sentence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sentences/1
  def destroy
    @sentence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = current_user.sentences.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sentence_params
      params.require(:sentence).permit(:active, :game_id, :user_id)
    end
end
