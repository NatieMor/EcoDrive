class AutosController < ApplicationController
  before_action :set_auto, only: %i[ :index, :show, :new, :edit, :create, :update, :destroy ]

   #usuario cliente
   before_action only: [:index, :show] do
    authorize_request(["cliente"])
  end 
  #usuario Administrador
  before_action only: [:index, :show, :new, :edit, :create, :update, :destroy] do
    authorize_request(["admin"])
  end

  # GET /autos or /autos.json
  def index
    @autos = Auto.all
    @pagy, @autos = pagy(Auto.all)
    if params[:auto].present?
      @autos = @autos.search_full_text(params[:Precio_por_dia, :modelo_de_auto])
      end
  end

  # GET /autos/1 or /autos/1.json
  def show
    @autos = Auto.all
    @marca = Marca.all
    if params[:auto].present?
      @autos = @autos.search_full_text(params[:id, :Precio_por_dia, :modelo_de_auto])
      end
  end

  # GET /autos/new
  def new
    @auto = Auto.new
    @autos = Auto.all
    @bateria = Baterium.all
    @marca = Marca.all
    @tecnologia = Tecnologium.all
    @carracteristica = Carracteristica.all
    @pagy, @autos = pagy(Auto.all)
    if params[:auto].present?
      @autos = @autos.search_full_text(params[:id, :Precio_por_dia, :modelo_de_auto])
      end
  end

  # GET /autos/1/edit
  def edit
  end

  # POST /autos or /autos.json
  def create
    @auto = Auto.new(auto_params)

    respond_to do |format|
      if @auto.save
        format.html { redirect_to auto_url(@auto), notice: "Auto se creo exitosamento." }
        format.json { render :show, status: :created, location: @auto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autos/1 or /autos/1.json
  def update
    respond_to do |format|
      if @auto.update(auto_params)
        format.html { redirect_to auto_url(@auto), notice: "Auto fue actualizado." }
        format.json { render :show, status: :ok, location: @auto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autos/1 or /autos/1.json
  def destroy
    @auto.destroy

    respond_to do |format|
      format.html { redirect_to autos_url, notice: "Auto fue exitosamente eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto
      @auto = Auto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auto_params
      params.require(:auto).permit(:modelo_de_auto, :Rango, :Precio_por_dia, :Año_fabricacion, :marca_id, :carracteristica_id)
    end
end
