class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :lastname
      t.integer :identificacion
      t.integer :edad

      t.timestamps null: false
    end
  end
end
