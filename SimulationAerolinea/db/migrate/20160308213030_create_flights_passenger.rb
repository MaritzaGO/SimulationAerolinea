class CreateFlightsPassenger < ActiveRecord::Migration
  def change
    create_table :flights_passengers do |t|
      t.integer :flight_id
      t.integer :passenger_id
    end
  end
end
