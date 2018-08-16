class CreateContact1s < ActiveRecord::Migration[5.2]
  def change
    create_table :contact1s do |t|
      t.string :name
      t.string :correo
      t.string :asunto
      t.text :mensaje

      t.timestamps
    end
  end
end
