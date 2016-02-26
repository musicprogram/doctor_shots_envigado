class LicorsController < ApplicationController
  before_action :set_licor, only: [:show, :edit, :update, :destroy]

  # GET /licors
  # GET /licors.json
  def index
    @licors = Licor.all
  end

  # GET /licors/1
  # GET /licors/1.json
  def show
  end

  # GET /licors/new
  def new
    @licor = Licor.new
  end

  # GET /licors/1/edit
  def edit
  end

  # POST /licors
  # POST /licors.json
  def create
    @licor = Licor.new(licor_params)

    respond_to do |format|
      if @licor.save
        format.html { redirect_to @licor, notice: 'Licor was successfully created.' }
        format.json { render :show, status: :created, location: @licor }
      else
        format.html { render :new }
        format.json { render json: @licor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licors/1
  # PATCH/PUT /licors/1.json
  def update
    respond_to do |format|
      if @licor.update(licor_params)
        format.html { redirect_to @licor, notice: 'Licor was successfully updated.' }
        format.json { render :show, status: :ok, location: @licor }
      else
        format.html { render :edit }
        format.json { render json: @licor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licors/1
  # DELETE /licors/1.json
  def destroy
    @licor.destroy
    respond_to do |format|
      format.html { redirect_to licors_url, notice: 'Licor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_licor
      @licor = Licor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def licor_params
      params.require(:licor).permit(:nombre, :cantidad, :precio, :mililitros, :valor, :categoria, :descripcion)
    end
end
