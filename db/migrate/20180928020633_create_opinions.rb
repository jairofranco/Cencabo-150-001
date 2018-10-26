class CreateOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :opinions do |t|
      t.string :usuario
      t.date :fecha
      t.string :tipo
      t.string :asunto
      t.text :texto

      t.timestamps
    end
  end
end
