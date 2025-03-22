class CreateHomes < ActiveRecord::Migration[8.0]
  def change
    create_table :homes do |t|
      t.string :nombre
      t.string :desc
      t.string :direccion

      t.timestamps
    end
  end
end
