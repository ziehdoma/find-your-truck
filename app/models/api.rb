class Api


	def self.listings
		JSON.parse(File.read("#{Rails.root.to_s}/lib/data/listings.json"))
	end

	def self.load(local_file)
		JSON.parse(File.read("#{Rails.root.to_s}/lib/data/#{local_file}.json"))
	end

end