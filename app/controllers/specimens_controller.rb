class SpecimensController < ApplicationController
  before_action :set_specimen, only: [:show, :edit, :update, :destroy]

  # GET /specimens
  # GET /specimens.json
  def index
    @specimens = Specimen.all.to_a
  end

  # GET /specimens/1
  # GET /specimens/1.json
  def show
  end

  # GET /specimens/new
  def new
    @specimen = Specimen.new
  end

  # GET /specimens/1/edit
  def edit
  end

  # POST /specimens
  # POST /specimens.json
  def create
    @specimen = Specimen.new(specimen_params)

    respond_to do |format|
      if @specimen.save
        format.html { redirect_to @specimen, notice: 'Specimen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @specimen }
      else
        format.html { render action: 'new' }
        format.json { render json: @specimen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specimens/1
  # PATCH/PUT /specimens/1.json
  def update
    respond_to do |format|
      if @specimen.update(specimen_params)
        format.html { redirect_to @specimen, notice: 'Specimen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specimen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specimens/1
  # DELETE /specimens/1.json
  def destroy
    @specimen.destroy
    respond_to do |format|
      format.html { redirect_to specimens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specimen
      @specimen = Specimen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specimen_params
      params.require(:specimen).permit(:parent, :type, :label)
    end
end
