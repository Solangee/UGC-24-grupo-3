class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :celular
      t.integer :ciudad
      t.string :genero
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
