class CreateCatalogues < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogues do |t|
      t.string :nom
      t.integer :code

      t.timestamps
    end
  end
end
