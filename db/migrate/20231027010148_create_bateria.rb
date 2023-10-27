class CreateBateria < ActiveRecord::Migration[7.0]
  def change
    create_table :bateria do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
