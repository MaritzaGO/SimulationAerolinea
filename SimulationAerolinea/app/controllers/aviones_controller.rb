class AvionesController < ApplicationController
  before_action :set_avione, only: [:show, :edit, :update, :destroy]

  # GET /aviones
  # GET /aviones.json
  def index
    @aviones = Avione.all
  end

  # GET /aviones/1
  # GET /aviones/1.json
  def show
  end

  # GET /aviones/new
  def new
    @avione = Avione.new
  end

  # GET /aviones/1/edit
  def edit
  end

  # POST /aviones
  # POST /aviones.json
  def create
    @avione = Avione.new(avione_params)

    respond_to do |format|
      if @avione.save
        format.html { redirect_to @avione, notice: 'Avione was successfully created.' }
        format.json { render :show, status: :created, location: @avione }
      else
        format.html { render :new }
        format.json { render json: @avione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aviones/1
  # PATCH/PUT /aviones/1.json
  def update
    respond_to do |format|
      if @avione.update(avione_params)
        format.html { redirect_to @avione, notice: 'Avione was successfully updated.' }
        format.json { render :show, status: :ok, location: @avione }
      else
        format.html { render :edit }
        format.json { render json: @avione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aviones/1
  # DELETE /aviones/1.json
  def destroy
    @avione.destroy
    respond_to do |format|
      format.html { redirect_to aviones_url, notice: 'Avione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avione
      @avione = Avione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avione_params
      params.require(:avione).permit(:codigo, :marca, :estadoavion, :totalpasajeros, :ruta_asignada, :identificacion_piloto, :nombre_piloto)
    end
end
