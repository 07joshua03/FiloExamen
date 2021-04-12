class EndTermsController < ApplicationController
  before_action :set_end_term, only: %i[ show edit update destroy ]

  # GET /end_terms or /end_terms.json
  def index
    @end_terms = EndTerm.all
  end

  def test
  end

  # GET /end_terms/1 or /end_terms/1.json
  def show
  end

  # GET /end_terms/new
  def new
    @end_term = EndTerm.new
  end

  # GET /end_terms/1/edit
  def edit
  end

  # POST /end_terms or /end_terms.json
  def create
    @end_term = EndTerm.new(end_term_params)

    respond_to do |format|
      if @end_term.save
        format.html { redirect_to @end_term, notice: "End term was successfully created." }
        format.json { render :show, status: :created, location: @end_term }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @end_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /end_terms/1 or /end_terms/1.json
  def update
    respond_to do |format|
      if @end_term.update(end_term_params)
        format.html { redirect_to @end_term, notice: "End term was successfully updated." }
        format.json { render :show, status: :ok, location: @end_term }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @end_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /end_terms/1 or /end_terms/1.json
  def destroy
    @end_term.destroy
    respond_to do |format|
      format.html { redirect_to end_terms_url, notice: "End term was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end_term
      @end_term = EndTerm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def end_term_params
      params.require(:end_term).permit(:number, :chapter, :definition)
    end
end
