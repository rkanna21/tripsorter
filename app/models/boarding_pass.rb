class BoardingPass < ActiveRecord::Base

def sort_trip
		a=BoardingPass.all
		
		route=""
		a.sort!{|a,b| a.destination <=> b.source}
		a.each do |route1|
		route+="From #{route1.source} take #{route1.transportation} to #{route1.destination} "
		end
		return route
		
end

end
