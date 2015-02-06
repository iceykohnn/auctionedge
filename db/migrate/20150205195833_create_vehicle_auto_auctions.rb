class CreateVehicleAutoAuctions < ActiveRecord::Migration
  def change
    create_table :vehicle_auto_auctions do |t|
      t.integer :auction_id
      t.integer :vehicle_id
      t.integer :winning_bid
      t.integer :seller_payout
      t.text :description

      t.timestamps
    end
  end
end
