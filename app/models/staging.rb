class Staging < ActiveRecord::Base
	#has_many :auctions
	#has_many :vehicle_auto_auctions, through: :auctions

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		Staging.create!(
			auction_name:row[0],
			street_address:row[1],
			city:row[2],	
			state:row[3],
			zip:row[4],
			vehicle_year:row[5],
			vehicle_make:row[6],
			vehicle_model:row[7],
			vehicle_stock_number:row[8],
			winning_bid:row[9],
			seller_payout:row[10],
			description:row[11] )
		end
	end
end
