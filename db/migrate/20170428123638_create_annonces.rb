class CreateAnnonces < ActiveRecord::Migration[5.1]
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :description
      t.float :prix
      t.string :photo

      t.timestamps
    end
  end
end
