class PointsController < ApplicationController
  def redirect(url, text)
  	redirect_to url, notice: text
  end
  
  def index
    @points = Point.all
  end

  def import
    if params[:file]
  		Point.import(params[:file])
  		redirect(root_url, "Activity Data imported!")	
  	else
  		redirect(root_url, "Please upload a CSV file")
  	end
  end
end
