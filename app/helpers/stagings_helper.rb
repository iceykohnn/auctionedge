module StagingsHelper
	
	
	def build_auction
		@auction.each do |auction|
		new_auc = auction
		Auction.create!(auction_name:new_auc[0], street_address:new_auc[1], city:new_auc[2], state:new_auc[3], zip:new_auc[4])
		end
	end

	def build_vehicle
		@vehicle.each do |vehicle|
		new_veh = vehicle
		Vehicle.create!(vehicle_make:new_veh[0], vehicle_year:new_veh[1], vehicle_model:new_veh[2], vehicle_stock_number:new_veh[3])
		end
	end

	def build_vehicle_auto_auction
		auction = Auction.find(params[:id])
		vehicle = Vehicle.find(params[:id])
		@vehicle_auto_auction.each do |event|
		new_event = event
		VehicleAutoAuction.create!(auction_id:auction.id, vehicle_id:vehicle.id, winning_bid:new_event[0], seller_payout:new_event[1], description:new_event[2])
		end
	end

end


