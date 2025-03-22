class CreateAprendizs < ActiveRecord::Migration[8.0]
  def change
    create_table :aprendizs do |t|
      t.string :nombre
      t.string :string
      t.string :apellido
      t.integer :edad

      t.timestamps
    end
  end
end
