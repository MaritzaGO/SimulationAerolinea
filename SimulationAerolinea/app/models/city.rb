class City < ActiveRecord::Base

has_many :routes, foreign_key: "city_o_id"
validates :name, :country, presence: true



end
