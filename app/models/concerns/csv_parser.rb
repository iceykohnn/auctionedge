class CsvParser
	def self.import(file)
			CSV.foreach(file.path, headers: true) do |row|
				#make this a hash
			# Auction.create!
   #    		Vehicle.create!(make:row[5], year:row[6], model:row[7], stock_number:row[8])
   #    		VehicleAutoAuction.create!(winning_bid:row[9], seller_payout:row[10], description:row[11])
		end
  end
end