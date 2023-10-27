class CreateCarracteristicas < ActiveRecord::Migration[7.0]
  def change
    create_table :carracteristicas do |t|
      t.references :baterium, null: false, foreign_key: true
      t.references :carga, null: false, foreign_key: true
      t.references :tecnologium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
