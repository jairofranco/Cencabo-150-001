class CreateCyclists < ActiveRecord::Migration[5.0]
  def change
    create_table :cyclists do |t|
      t.string :identificacion
      t.string :nombre
      t.string :usuario
      t.string :clave
      t.string :correo
      t.string :nomcontact
      t.string :correocontact

      t.timestamps
    end
  end
end
