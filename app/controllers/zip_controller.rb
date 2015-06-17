class ZipController < ApplicationController

  
  def home
 
  end

  def index
  	@zip = params[:zipcode]
  	
  	uri = "http://nyctruckfood.com/api/trucks/search?q=#{@zip}

"  
   @response = JSON.parse(RestClient.get(uri))
  
end
end
