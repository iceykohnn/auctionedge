class CsvParser < ActiveRecord::Base
	def self.import(file)
			CSV.foreach(file.path, headers: true) do |row|
				
		end
  end
end
