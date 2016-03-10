class Pilot < ActiveRecord::Base
	has_many :flights
	
	def complete
		"#{identificacion} #{name} #{lastname}"
	end

end
