class CreateCsvParsers < ActiveRecord::Migration
  def change
    create_table :csv_parsers do |t|

      t.timestamps
    end
  end
end
