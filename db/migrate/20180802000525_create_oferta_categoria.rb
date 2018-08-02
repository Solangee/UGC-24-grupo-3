class CreateOfertaCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :oferta_categoria do |t|
      t.integer :oferta_educativa_id
      t.integer :categoria_id

      t.timestamps
    end
  end
end
