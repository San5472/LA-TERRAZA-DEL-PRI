class CreateCarros < ActiveRecord::Migration[8.0]
  def change
    create_table :carros do |t|
      t.string :modelo
      t.integer :matricula
      t.string :color

      t.timestamps
    end
  end
end
