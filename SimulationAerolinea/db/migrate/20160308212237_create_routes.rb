class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :city_o_id
      t.integer :city_y_id

      t.timestamps null: false
    end
  end
end
