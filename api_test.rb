require 'httparty'
require 'json'

uri = 'http://data.tmsapi.com/v1.1/movies/showings?startDate=2015-06-16&zip=78701&api_key=9kvj3kaf4f5wfmxgry96rvxt
'
response = HTTParty.get(url)