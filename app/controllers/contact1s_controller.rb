class Contact1sController < ApplicationController
  before_action :set_contact1, only: [:show, :edit, :update, :destroy]

  # GET /contact1s
  # GET /contact1s.json
  def index
    @contact1s = Contact1.all
  end

  # GET /contact1s/1
  # GET /contact1s/1.json
  def show
  end

  # GET /contact1s/new
  def new
    @contact1 = Contact1.new
  end

  # GET /contact1s/1/edit
  def edit
  end

  # POST /contact1s
  # POST /contact1s.json
  def create
    @contact1 = Contact1.new(contact1_params)

    respond_to do |format|
      if @contact1.save
        format.html { redirect_to @contact1, notice: 'Contact1 was successfully created.' }
        format.json { render :show, status: :created, location: @contact1 }
      else
        format.html { render :new }
        format.json { render json: @contact1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact1s/1
  # PATCH/PUT /contact1s/1.json
  def update
    respond_to do |format|
      if @contact1.update(contact1_params)
        format.html { redirect_to @contact1, notice: 'Contact1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact1 }
      else
        format.html { render :edit }
        format.json { render json: @contact1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact1s/1
  # DELETE /contact1s/1.json
  def destroy
    @contact1.destroy
    respond_to do |format|
      format.html { redirect_to contact1s_url, notice: 'Contact1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact1
      @contact1 = Contact1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact1_params
      params.require(:contact1).permit(:name, :correo, :asunto, :mensaje)
    end
end
