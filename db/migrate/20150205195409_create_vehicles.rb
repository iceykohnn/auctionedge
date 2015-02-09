class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|	    	
      t.integer :vehicle_auto_auction_id
      t.string :vehicle_make
      t.string :vehicle_year
      t.string :vehicle_model
      t.string :vehicle_stock_number

      t.timestamps
    end
  end
end
