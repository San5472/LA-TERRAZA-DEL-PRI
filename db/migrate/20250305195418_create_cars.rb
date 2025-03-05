class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :placa
      t.string :color
      t.string :marca

      t.timestamps
    end
  end
end
