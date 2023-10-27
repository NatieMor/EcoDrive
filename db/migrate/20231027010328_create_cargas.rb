class CreateCargas < ActiveRecord::Migration[7.0]
  def change
    create_table :cargas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
