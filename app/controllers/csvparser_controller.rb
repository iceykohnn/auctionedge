class CsvParserController < ApplicationController
	def import
    CsvParser.import(params[:file])
    redirect_to root_url, notice: "File imported."
  end
end
