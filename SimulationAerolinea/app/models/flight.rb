class Flight < ActiveRecord::Base

	belongs_to :route
	belongs_to :pilot
	belongs_to :airplane
	has_and_belongs_to_many :passengers
	
	validates :route_id, :pilot_id, :airplane_id, presence: true

end
