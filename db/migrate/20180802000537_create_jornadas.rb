class CreateJornadas < ActiveRecord::Migration[5.2]
  def change
    create_table :jornadas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
