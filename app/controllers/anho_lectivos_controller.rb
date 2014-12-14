class AnhoLectivosController < ApplicationController
  before_action :set_anho_lectivo, only: [:show, :edit, :update, :destroy]

  # GET /anho_lectivos
  # GET /anho_lectivos.json
  def index
    @anho_lectivos = AnhoLectivo.all
  end

  # GET /anho_lectivos/1
  # GET /anho_lectivos/1.json
  def show
  end

  # GET /anho_lectivos/new
  def new
    @anho_lectivo = AnhoLectivo.new
  end

  # GET /anho_lectivos/1/edit
  def edit
  end

  # POST /anho_lectivos
  # POST /anho_lectivos.json
  def create
    @anho_lectivo = AnhoLectivo.new(anho_lectivo_params)

    respond_to do |format|
      if @anho_lectivo.save
        format.html { redirect_to @anho_lectivo, notice: 'Anho lectivo was successfully created.' }
        format.json { render :show, status: :created, location: @anho_lectivo }
      else
        format.html { render :new }
        format.json { render json: @anho_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anho_lectivos/1
  # PATCH/PUT /anho_lectivos/1.json
  def update
    respond_to do |format|
      if @anho_lectivo.update(anho_lectivo_params)
        format.html { redirect_to @anho_lectivo, notice: 'Anho lectivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @anho_lectivo }
      else
        format.html { render :edit }
        format.json { render json: @anho_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anho_lectivos/1
  # DELETE /anho_lectivos/1.json
  def destroy
    @anho_lectivo.destroy
    respond_to do |format|
      format.html { redirect_to anho_lectivos_url, notice: 'Anho lectivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anho_lectivo
      @anho_lectivo = AnhoLectivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anho_lectivo_params
      params.require(:anho_lectivo).permit(:anho_lect)
    end
end
