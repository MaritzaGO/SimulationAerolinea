class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :reference
      t.string :state_airplane
      t.integer :count_passengers

      t.timestamps null: false
    end
  end
end
