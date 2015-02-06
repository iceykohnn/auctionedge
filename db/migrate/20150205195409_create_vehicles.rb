class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :year
      t.string :model
      t.string :stock_number

      t.timestamps
    end
  end
end
