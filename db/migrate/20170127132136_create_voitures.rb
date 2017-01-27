class CreateVoitures < ActiveRecord::Migration[5.0]
  def change
    create_table :voitures do |t|
      t.string :nom
      t.integer :code
      t.string :description
      t.integer :tarif
      t.float :poids
      t.references :catalogue, foreign_key: true

      t.timestamps
    end
  end
end
