class CreateAviones < ActiveRecord::Migration
  def change
    create_table :aviones do |t|
      t.string :codigo
      t.string :marca
      t.string :estadoavion
      t.integer :totalpasajeros
      t.string :ruta_asignada
      t.integer :identificacion_piloto
      t.string :nombre_piloto

      t.timestamps null: false
    end
  end
end
