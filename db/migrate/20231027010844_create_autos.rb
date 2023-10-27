class CreateAutos < ActiveRecord::Migration[7.0]
  def change
    create_table :autos do |t|
      t.string :modelo_de_auto
      t.string :Rango
      t.integer :Precio_por_dia
      t.date :Año_fabricacion
      t.references :marca, null: false, foreign_key: true, id: :integer
      t.references :carracteristica, null: true, foreign_key: true, id: :integer

      t.timestamps
    end
  end
end
