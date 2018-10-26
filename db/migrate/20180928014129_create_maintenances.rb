class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.string :nombre
      t.text :descripcion
      t.string :talleres

      t.timestamps
    end
  end
end
