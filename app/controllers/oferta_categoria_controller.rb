class OfertaCategoriaController < ApplicationController
  before_action :set_oferta_categorium, only: [:show, :edit, :update, :destroy]

  # GET /oferta_categoria
  # GET /oferta_categoria.json
  def index
    @oferta_categoria = OfertaCategorium.all
  end

  # GET /oferta_categoria/1
  # GET /oferta_categoria/1.json
  def show
  end

  # GET /oferta_categoria/new
  def new
    @oferta_categorium = OfertaCategorium.new
  end

  # GET /oferta_categoria/1/edit
  def edit
  end

  # POST /oferta_categoria
  # POST /oferta_categoria.json
  def create
    @oferta_categorium = OfertaCategorium.new(oferta_categorium_params)

    respond_to do |format|
      if @oferta_categorium.save
        format.html { redirect_to @oferta_categorium, notice: 'Oferta categorium was successfully created.' }
        format.json { render :show, status: :created, location: @oferta_categorium }
      else
        format.html { render :new }
        format.json { render json: @oferta_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferta_categoria/1
  # PATCH/PUT /oferta_categoria/1.json
  def update
    respond_to do |format|
      if @oferta_categorium.update(oferta_categorium_params)
        format.html { redirect_to @oferta_categorium, notice: 'Oferta categorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @oferta_categorium }
      else
        format.html { render :edit }
        format.json { render json: @oferta_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta_categoria/1
  # DELETE /oferta_categoria/1.json
  def destroy
    @oferta_categorium.destroy
    respond_to do |format|
      format.html { redirect_to oferta_categoria_url, notice: 'Oferta categorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferta_categorium
      @oferta_categorium = OfertaCategorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oferta_categorium_params
      params.permit(:oferta_educativa_id, :categoria_id)
      # params.require(:oferta_categorium).permit(:oferta_educativa_id, :categoria_id)
    end
end
