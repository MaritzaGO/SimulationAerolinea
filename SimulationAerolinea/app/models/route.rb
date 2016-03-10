class Route < ActiveRecord::Base
	belongs_to :city_o, class_name: 'City', foreign_key: 'city_o_id'
	belongs_to :city_o, class_name: 'City', foreign_key: 'city_d_id'
	has_many :flights

validates :city_d_id, :city_o_id, presence: true
validates :city_d_id, :city_o_id, numericality: {only_integer: true}

validate :city_o_city_d


def city_o_city_d
	errors.add(:city_d_id, "La ciudad destino debe ser diferente a la ciudad origen")
	if self.city_d_id == self.city_o_id
	end
end


def define_route
	"#{self.city_o.name}" - "#{self.city_d.name}"
end

end
