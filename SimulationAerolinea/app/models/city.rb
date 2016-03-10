class City < ActiveRecord::Base

has_many :routes, foreign_key: "city_o_id"
validates :name_city, :country, presence: true

end
