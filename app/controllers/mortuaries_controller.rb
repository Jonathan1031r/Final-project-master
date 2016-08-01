class MortuariesController < ApplicationController
	def index
		@hash = Gmaps4rails.build_markers(@mortuaries) do |mortuary, marker|
		marker.lat mortuary.latitude
		marker.lng mortuary.longitude
		end
			
	end

end
