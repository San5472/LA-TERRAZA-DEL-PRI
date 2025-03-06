class CreateMotos < ActiveRecord::Migration[8.0]
  def change
    create_table :motos do |t|
      t.string :marca
      t.string :modelo
      t.string :color

      t.timestamps
    end
  end
end
