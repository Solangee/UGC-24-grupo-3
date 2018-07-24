class CreateOfertaeducativas < ActiveRecord::Migration[5.2]
  def change
    create_table :ofertaeducativas do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :institucion_id
      t.integer :categoria_id
      t.integer :jornada_id
      t.integer :ubicacion_id
      t.integer :duracion_id

      t.timestamps
    end
  end
end
