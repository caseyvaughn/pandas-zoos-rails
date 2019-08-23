class CreatePandas < ActiveRecord::Migration[5.2]
  def change
    create_table :pandas do |t|
      t.string :name
      t.integer :age
      t.references :zoo, foreign_key: true

      t.timestamps
    end
  end
end
