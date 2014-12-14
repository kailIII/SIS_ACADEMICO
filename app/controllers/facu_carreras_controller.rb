class FacuCarrerasController < ApplicationController
  before_action :set_facu_carrera, only: [:show, :edit, :update, :destroy]

  # GET /facu_carreras
  # GET /facu_carreras.json
  def index
    @facu_carreras = FacuCarrera.all
  end

  # GET /facu_carreras/1
  # GET /facu_carreras/1.json
  def show
  end

  # GET /facu_carreras/new
  def new
    @facu_carrera = FacuCarrera.new
  end

  # GET /facu_carreras/1/edit
  def edit
  end

  # POST /facu_carreras
  # POST /facu_carreras.json
  def create
    @facu_carrera = FacuCarrera.new(facu_carrera_params)

    respond_to do |format|
      if @facu_carrera.save
        format.html { redirect_to @facu_carrera, notice: 'Facu carrera was successfully created.' }
        format.json { render :show, status: :created, location: @facu_carrera }
      else
        format.html { render :new }
        format.json { render json: @facu_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facu_carreras/1
  # PATCH/PUT /facu_carreras/1.json
  def update
    respond_to do |format|
      if @facu_carrera.update(facu_carrera_params)
        format.html { redirect_to @facu_carrera, notice: 'Facu carrera was successfully updated.' }
        format.json { render :show, status: :ok, location: @facu_carrera }
      else
        format.html { render :edit }
        format.json { render json: @facu_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facu_carreras/1
  # DELETE /facu_carreras/1.json
  def destroy
    @facu_carrera.destroy
    respond_to do |format|
      format.html { redirect_to facu_carreras_url, notice: 'Facu carrera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facu_carrera
      @facu_carrera = FacuCarrera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facu_carrera_params
      params.require(:facu_carrera).permit(:carrera_id, :facultad_id)
    end
end
