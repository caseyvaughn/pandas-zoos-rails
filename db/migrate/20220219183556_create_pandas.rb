class CreatePandas < ActiveRecord::Migration[7.0]
  def change
    create_table :pandas do |t|
      t.string :name
      t.integer :age
      t.references :zoo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
