class TitreDePostesController < ApplicationController
  before_action :set_titre_de_poste, only: %i[ show edit update destroy ]

  # GET /titre_de_postes or /titre_de_postes.json
  def index
    @titre_de_postes = TitreDePoste.all
  end

  # GET /titre_de_postes/1 or /titre_de_postes/1.json
  def show
  end

  # GET /titre_de_postes/new
  def new
    @titre_de_poste = TitreDePoste.new
  end

  # GET /titre_de_postes/1/edit
  def edit
  end

  # POST /titre_de_postes or /titre_de_postes.json
  def create
    @titre_de_poste = TitreDePoste.new(titre_de_poste_params)

    respond_to do |format|
      if @titre_de_poste.save
        format.html { redirect_to @titre_de_poste, notice: "Titre de poste was successfully created." }
        format.json { render :show, status: :created, location: @titre_de_poste }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @titre_de_poste.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /titre_de_postes/1 or /titre_de_postes/1.json
  def update
    respond_to do |format|
      if @titre_de_poste.update(titre_de_poste_params)
        format.html { redirect_to @titre_de_poste, notice: "Titre de poste was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @titre_de_poste }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @titre_de_poste.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /titre_de_postes/1 or /titre_de_postes/1.json
  def destroy
    @titre_de_poste.destroy!

    respond_to do |format|
      format.html { redirect_to titre_de_postes_path, notice: "Titre de poste was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titre_de_poste
      @titre_de_poste = TitreDePoste.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titre_de_poste_params
      params.require(:titre_de_poste).permit(:name)
    end
end
