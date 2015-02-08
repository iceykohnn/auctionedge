class StagingsController < ApplicationController
  before_action :set_staging, only: [:show, :edit, :update, :destroy]
  include StagingsHelper

  # GET /stagings
  # GET /stagings.json
  def index
    @stagings = Staging.all
  end

  # GET /stagings/1
  # GET /stagings/1.json
  def show
  end

  # GET /stagings/new
  def new
    @staging = Staging.new
  end

  # GET /stagings/1/edit
  def edit
  end

  # POST /stagings
  # POST /stagings.json
  def create
    @staging = Staging.new(staging_params)

    respond_to do |format|
      if @staging.save
        format.html { redirect_to @staging, notice: 'Staging was successfully created.' }
        format.json { render :show, status: :created, location: @staging }
      else
        format.html { render :new }
        format.json { render json: @staging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stagings/1
  # PATCH/PUT /stagings/1.json
  def update
    respond_to do |format|
      if @staging.update(staging_params)
        format.html { redirect_to @staging, notice: 'Staging was successfully updated.' }
        format.json { render :show, status: :ok, location: @staging }
      else
        format.html { render :edit }
        format.json { render json: @staging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stagings/1
  # DELETE /stagings/1.json
  def destroy
    @staging.destroy
    respond_to do |format|
      format.html { redirect_to stagings_url, notice: 'Staging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Staging.import(params[:file])
    build_location
    build_car
    build_event
    redirect_to root_url, notice: "File imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staging
      @staging = Staging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staging_params
      params.require(:staging).permit(:auction_name, :street_address, :city, :state, :zip, :vehicle_year, :vehicle_make, :vehicle_model, :vehicle_stock_number, :winning_bid, :seller_payout, :description)
    end
end
