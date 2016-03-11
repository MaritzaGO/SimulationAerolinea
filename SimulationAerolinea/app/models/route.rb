class Route < ActiveRecord::Base
	belongs_to :city_o, class_name: 'City', foreign_key: 'city_o_id'
	belongs_to :city_y, class_name: 'City', foreign_key: 'city_y_id'
	has_many :flights

#validates :city_y_id, :city_o_id, presence: true
#validates :city_y_id, :city_o_id, numericality: {only_integer: true}

validate :city_o_city_y

def city_o_city_y
	if self.city_y_id == self.city_o_id
		errors.add(:city_y_id, "La ciudad destino debe ser diferente a la ciudad origen")
	end
end



def define_route
	"#{self.city_o.name_city}" "-" "#{self.city_y.name_city}"
end

end
