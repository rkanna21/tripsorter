class BoardingPassesController < ApplicationController
  before_action :set_boarding_pass, only: [:show, :edit, :update, :destroy]

  # GET /boarding_passes
  # GET /boarding_passes.json
  def index
    @boarding_passes = BoardingPass.all
    @sortedtrips=BoardingPass.new
    @st =  @sortedtrips.sort_trip

  end

  # GET /boarding_passes/1
  # GET /boarding_passes/1.json
  def show
  end

  # GET /boarding_passes/new
  def new
    @boarding_pass = BoardingPass.new
  end

  # GET /boarding_passes/1/edit
  def edit
  end

  # POST /boarding_passes
  # POST /boarding_passes.json
  def create
    @boarding_pass = BoardingPass.new(boarding_pass_params)

    respond_to do |format|
      if @boarding_pass.save
        format.html { redirect_to @boarding_pass, notice: 'Boarding pass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @boarding_pass }
      else
        format.html { render action: 'new' }
        format.json { render json: @boarding_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarding_passes/1
  # PATCH/PUT /boarding_passes/1.json
  def update
    respond_to do |format|
      if @boarding_pass.update(boarding_pass_params)
        format.html { redirect_to @boarding_pass, notice: 'Boarding pass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @boarding_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarding_passes/1
  # DELETE /boarding_passes/1.json
  def destroy
    @boarding_pass.destroy
    respond_to do |format|
      format.html { redirect_to boarding_passes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding_pass
      @boarding_pass = BoardingPass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_pass_params
      params.require(:boarding_pass).permit(:source, :destination, :transportation, :seat, :gate, :counter)
    end
end
