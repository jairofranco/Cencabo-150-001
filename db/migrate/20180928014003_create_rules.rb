class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.string :articulo
      t.string :origen
      t.string :capitulo

      t.timestamps
    end
  end
end
