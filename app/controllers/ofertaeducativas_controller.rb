class OfertaeducativasController < ApplicationController
  before_action :set_ofertaeducativa, only: [:show, :edit, :update, :destroy]

  # GET /ofertaeducativas
  # GET /ofertaeducativas.json
  def index
    @ofertaeducativas = Ofertaeducativa.all
  end

  # GET /ofertaeducativas/1
  # GET /ofertaeducativas/1.json
  def show
  end

  # GET /ofertaeducativas/new
  def new
    @ofertaeducativa = Ofertaeducativa.new
  end

  # GET /ofertaeducativas/1/edit
  def edit
  end

  # POST /ofertaeducativas
  # POST /ofertaeducativas.json
  def create
    @ofertaeducativa = Ofertaeducativa.new(ofertaeducativa_params)

    respond_to do |format|
      if @ofertaeducativa.save
        format.html { redirect_to @ofertaeducativa, notice: 'Ofertaeducativa was successfully created.' }
        format.json { render :show, status: :created, location: @ofertaeducativa }
      else
        format.html { render :new }
        format.json { render json: @ofertaeducativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofertaeducativas/1
  # PATCH/PUT /ofertaeducativas/1.json
  def update
    respond_to do |format|
      if @ofertaeducativa.update(ofertaeducativa_params)
        format.html { redirect_to @ofertaeducativa, notice: 'Ofertaeducativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofertaeducativa }
      else
        format.html { render :edit }
        format.json { render json: @ofertaeducativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofertaeducativas/1
  # DELETE /ofertaeducativas/1.json
  def destroy
    @ofertaeducativa.destroy
    respond_to do |format|
      format.html { redirect_to ofertaeducativas_url, notice: 'Ofertaeducativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofertaeducativa
      @ofertaeducativa = Ofertaeducativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofertaeducativa_params
      params.require(:ofertaeducativa).permit(:nombre, :descripcion, :institucion_id, :categoria_id, :jornada_id, :ubicacion_id, :duracion_id)
    end
end
