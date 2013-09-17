class AdcategoriesController < ApplicationController
  before_action :set_adcategory, only: [:show, :edit, :update, :destroy]

  # GET /adcategories
  # GET /adcategories.json
  def index
    @adcategories = Adcategory.all
  end

  # GET /adcategories/1
  # GET /adcategories/1.json
  def show
  end

  # GET /adcategories/new
  def new
    @adcategory = Adcategory.new
  end

  # GET /adcategories/1/edit
  def edit
  end

  # POST /adcategories
  # POST /adcategories.json
  def create
    @adcategory = Adcategory.new(adcategory_params)

    respond_to do |format|
      if @adcategory.save
        format.html { redirect_to @adcategory, notice: 'Adcategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adcategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @adcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adcategories/1
  # PATCH/PUT /adcategories/1.json
  def update
    respond_to do |format|
      if @adcategory.update(adcategory_params)
        format.html { redirect_to @adcategory, notice: 'Adcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adcategories/1
  # DELETE /adcategories/1.json
  def destroy
    @adcategory.destroy
    respond_to do |format|
      format.html { redirect_to adcategories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adcategory
      @adcategory = Adcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adcategory_params
      params.require(:adcategory).permit(:name, :description, :parent_id)
    end
end
