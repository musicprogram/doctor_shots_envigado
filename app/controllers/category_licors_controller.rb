class CategoryLicorsController < ApplicationController
  before_action :set_category_licor, only: [:show, :edit, :update, :destroy]

  # GET /category_licors
  # GET /category_licors.json
  def index
    @category_licors = CategoryLicor.all
  end

  # GET /category_licors/1
  # GET /category_licors/1.json
  def show
  end

  # GET /category_licors/new
  def new
    @category_licor = CategoryLicor.new
  end

  # GET /category_licors/1/edit
  def edit
  end

  # POST /category_licors
  # POST /category_licors.json
  def create
    @category_licor = CategoryLicor.new(category_licor_params)

    respond_to do |format|
      if @category_licor.save
        format.html { redirect_to @category_licor, notice: 'Category licor was successfully created.' }
        format.json { render :show, status: :created, location: @category_licor }
      else
        format.html { render :new }
        format.json { render json: @category_licor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_licors/1
  # PATCH/PUT /category_licors/1.json
  def update
    respond_to do |format|
      if @category_licor.update(category_licor_params)
        format.html { redirect_to @category_licor, notice: 'Category licor was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_licor }
      else
        format.html { render :edit }
        format.json { render json: @category_licor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_licors/1
  # DELETE /category_licors/1.json
  def destroy
    @category_licor.destroy
    respond_to do |format|
      format.html { redirect_to category_licors_url, notice: 'Category licor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_licor
      @category_licor = CategoryLicor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_licor_params
      params.require(:category_licor).permit(:nombre)
    end
end
