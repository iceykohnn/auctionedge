class VehicleAutoAuctionsController < ApplicationController
  before_action :set_vehicle_auto_auction, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_auto_auctions
  # GET /vehicle_auto_auctions.json
  def index
    @vehicle_auto_auctions = VehicleAutoAuction.all
  end

  # GET /vehicle_auto_auctions/1
  # GET /vehicle_auto_auctions/1.json
  def show
  end

  # GET /vehicle_auto_auctions/new
  def new
    @vehicle_auto_auction = VehicleAutoAuction.new
  end

  # GET /vehicle_auto_auctions/1/edit
  def edit
  end

  # POST /vehicle_auto_auctions
  # POST /vehicle_auto_auctions.json
  def create
    @vehicle_auto_auction = VehicleAutoAuction.new(vehicle_auto_auction_params)

    respond_to do |format|
      if @vehicle_auto_auction.save
        format.html { redirect_to @vehicle_auto_auction, notice: 'Vehicle auto auction was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_auto_auction }
      else
        format.html { render :new }
        format.json { render json: @vehicle_auto_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_auto_auctions/1
  # PATCH/PUT /vehicle_auto_auctions/1.json
  def update
    respond_to do |format|
      if @vehicle_auto_auction.update(vehicle_auto_auction_params)
        format.html { redirect_to @vehicle_auto_auction, notice: 'Vehicle auto auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_auto_auction }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_auto_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_auto_auctions/1
  # DELETE /vehicle_auto_auctions/1.json
  def destroy
    @vehicle_auto_auction.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_auto_auctions_url, notice: 'Vehicle auto auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_auto_auction
      @vehicle_auto_auction = VehicleAutoAuction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_auto_auction_params
      params.require(:vehicle_auto_auction).permit(:auction_id, :vehicle_id, :winning_bid, :seller_payout, :description)
    end
end
