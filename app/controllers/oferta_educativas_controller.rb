class OfertaEducativasController < ApplicationController
  before_action :set_oferta_educativa, only: [:show, :edit, :update, :destroy]

  # GET /oferta_educativas
  # GET /oferta_educativas.json
  def index
    @oferta_educativas = OfertaEducativa.all
  end

  # GET /oferta_educativas/1
  # GET /oferta_educativas/1.json
  def show
  end

  # GET /oferta_educativas/new
  def new
    @oferta_educativa = OfertaEducativa.new
  end

  # GET /oferta_educativas/1/edit
  def edit
  end

  # POST /oferta_educativas
  # POST /oferta_educativas.json
  def create
    @oferta_educativa = OfertaEducativa.new(oferta_educativa_params)

    respond_to do |format|
      if @oferta_educativa.save
        format.html { redirect_to @oferta_educativa, notice: 'Oferta educativa was successfully created.' }
        format.json { render :show, status: :created, location: @oferta_educativa }
      else
        format.html { render :new }
        format.json { render json: @oferta_educativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferta_educativas/1
  # PATCH/PUT /oferta_educativas/1.json
  def update
    respond_to do |format|
      if @oferta_educativa.update(oferta_educativa_params)
        format.html { redirect_to @oferta_educativa, notice: 'Oferta educativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @oferta_educativa }
      else
        format.html { render :edit }
        format.json { render json: @oferta_educativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta_educativas/1
  # DELETE /oferta_educativas/1.json
  def destroy
    @oferta_educativa.destroy
    respond_to do |format|
      format.html { redirect_to oferta_educativas_url, notice: 'Oferta educativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferta_educativa
      @oferta_educativa = OfertaEducativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oferta_educativa_params
      params.permit(:nombre, :descripcion, :categoria_ids, :jornada_id, :ubicacion_id, :duracion_id)
      # params.require(:oferta_educativa).permit(:nombre, :descripcion, :categoria_ids, :jornada_id, :ubicacion_id, :duracion_id)
    end
end
