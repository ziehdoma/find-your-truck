class ZipController < ApplicationController

  
  def home
 
  end

  def index
  	@zip = params[:zipcode]
  	@startdate = params[:startDate]
 
  	uri = "http://nyctruckfood.com/api/trucks/search?q=#{@zip}

"  

   @response = JSON.parse(RestClient.get(uri))
   
   # @response = Api.listings
  end 
end


# @startdate = params[:startDate]
 
#   	uri = "http://data.tmsapi.com/v1.1/movies/showings?startDate=2015-06-16&zip=78701&api_key=2rz2buwq2f7wxqa64cp8sbpz

# "  