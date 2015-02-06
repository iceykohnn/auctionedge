class CsvParser < ActiveRecord::Base
	def self.import(file)
			CSV.foreach(file.path, headers: true) do |row|
				Auction.create!(location_name:row[0], address:row[1], city:row[2], state:row[3], zip:row[4])
        Vehicle.create!(make:row[5], year:row[6], model:row[7], stock_number:row[8])
        VehicleAutoAuction.create!(winning_bid:row[9], seller_payout:row[10], description:row[11])
		end
  end
end
