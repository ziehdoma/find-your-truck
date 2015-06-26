class ZipController < ApplicationController

  
  def home
 
  end

  def search
    @zip = params[:zipcode]
    uri = "http://nyctruckfood.com/api/trucks/search?q=#{@zip}"  
    @response = JSON.parse(RestClient.get(uri))
    
    @hash = Gmaps4rails.build_markers(@response) do |truck, marker|
      marker.lat truck["obj"]["last_seen"]["latitude"]
      marker.lng truck["obj"]["last_seen"]["longitude"]
      marker.infowindow truck["obj"]["name"]
    end
  end


 


  def results
  	redirect_to search_path(params[:zipcode])
  end

  def formmap
  end 

end
