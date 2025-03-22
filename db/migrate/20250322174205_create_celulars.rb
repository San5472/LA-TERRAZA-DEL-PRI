class CreateCelulars < ActiveRecord::Migration[8.0]
  def change
    create_table :celulars do |t|
      t.string :marca
      t.string :color

      t.timestamps
    end
  end
end
