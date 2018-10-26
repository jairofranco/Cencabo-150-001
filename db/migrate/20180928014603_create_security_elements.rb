class CreateSecurityElements < ActiveRecord::Migration[5.0]
  def change
    create_table :security_elements do |t|
      t.text :descripcion
      t.string :nombre
      t.string :reglamentario

      t.timestamps
    end
  end
end
