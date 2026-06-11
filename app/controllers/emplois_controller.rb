class EmploisController < ApplicationController
  before_action :set_emploi, only: %i[ show edit update destroy ]

  # GET /emplois or /emplois.json
  def index
    @emplois = Emploi.all
  end

  # GET /emplois/1 or /emplois/1.json
  def show
  end

  # GET /emplois/new
  def new
    @emploi = Emploi.new
  end

  # GET /emplois/1/edit
  def edit
  end

  # POST /emplois or /emplois.json
  def create
    @emploi = Emploi.new(emploi_params)

    respond_to do |format|
      if @emploi.save
        format.html { redirect_to @emploi, notice: "Emploi was successfully created." }
        format.json { render :show, status: :created, location: @emploi }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @emploi.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /emplois/1 or /emplois/1.json
  def update
    respond_to do |format|
      if @emploi.update(emploi_params)
        format.html { redirect_to @emploi, notice: "Emploi was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @emploi }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @emploi.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /emplois/1 or /emplois/1.json
  def destroy
    @emploi.destroy!

    respond_to do |format|
      format.html { redirect_to emplois_path, notice: "Emploi was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emploi
      @emploi = Emploi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emploi_params
      params.require(:emploi).permit(:titre_de_poste_id, :localisation_id, :type_de_localisation_id, :emploi_type_id, :niveau_experience_id, :annees_experience, :fourchette_salaire, :entreprise, :description)
    end
end
