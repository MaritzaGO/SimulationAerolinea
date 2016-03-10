class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :lastname
      t.integer :identificacion
      t.integer :edad

      t.timestamps null: false
    end
  end
end
