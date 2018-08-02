class DuracionsController < ApplicationController
  before_action :set_duracion, only: [:show, :edit, :update, :destroy]

  # GET /duracions
  # GET /duracions.json
  def index
    @duracions = Duracion.all
  end

  # GET /duracions/1
  # GET /duracions/1.json
  def show
  end

  # GET /duracions/new
  def new
    @duracion = Duracion.new
  end

  # GET /duracions/1/edit
  def edit
  end

  # POST /duracions
  # POST /duracions.json
  def create
    @duracion = Duracion.new(duracion_params)

    respond_to do |format|
      if @duracion.save
        format.html { redirect_to @duracion, notice: 'Duracion was successfully created.' }
        format.json { render :show, status: :created, location: @duracion }
      else
        format.html { render :new }
        format.json { render json: @duracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duracions/1
  # PATCH/PUT /duracions/1.json
  def update
    respond_to do |format|
      if @duracion.update(duracion_params)
        format.html { redirect_to @duracion, notice: 'Duracion was successfully updated.' }
        format.json { render :show, status: :ok, location: @duracion }
      else
        format.html { render :edit }
        format.json { render json: @duracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duracions/1
  # DELETE /duracions/1.json
  def destroy
    @duracion.destroy
    respond_to do |format|
      format.html { redirect_to duracions_url, notice: 'Duracion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duracion
      @duracion = Duracion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duracion_params
      params.permit(:nombre)
      # params.require(:duracion).permit(:nombre)
    end
end
