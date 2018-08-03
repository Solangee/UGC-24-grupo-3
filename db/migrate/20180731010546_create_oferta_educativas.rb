class CreateOfertaEducativas < ActiveRecord::Migration[5.2]
  def change
    create_table :oferta_educativas do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :categoria_ids
      t.integer :jornada_id
      t.integer :ubicacion_id
      t.integer :duracion_id

      t.timestamps
    end
  end
end
