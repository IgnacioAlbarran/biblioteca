class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, foreign_key: true
      t.string :description
      t.integer :year
      t.boolean :available
      t.string :section
      t.integer :shelf
      t.integer :order

      t.timestamps
    end
  end
end
