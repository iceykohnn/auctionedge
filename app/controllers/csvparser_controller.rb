class CsvParserController < ApplicationController
	
	def index
		@csv_parsers = CsvParser.all
	end


	def import
    CsvParser.import(params[:file])
    redirect_to root_url, notice: "File imported."
  end
end
