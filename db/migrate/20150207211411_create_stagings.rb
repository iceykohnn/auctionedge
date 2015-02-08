class CreateStagings < ActiveRecord::Migration
  def change
    create_table :stagings do |t|
      t.string :auction_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_stock_number
      t.integer :winning_bid
      t.integer :seller_payout
      t.text :description

      t.timestamps
    end
  end
end
