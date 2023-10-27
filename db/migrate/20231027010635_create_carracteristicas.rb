class CreateCarracteristicas < ActiveRecord::Migration[7.0]
  def change
    create_table :carracteristicas do |t|
      t.references :baterium, null: true, foreign_key: true, id: :integer
      t.references :carga, null: true, foreign_key: true, id: :integer
      t.references :tecnologium, null: true, foreign_key: true,  id: :integer

      t.timestamps
    end
  end
end
