class CreateCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.integer :padre_id

      t.timestamps
    end
  end
end
