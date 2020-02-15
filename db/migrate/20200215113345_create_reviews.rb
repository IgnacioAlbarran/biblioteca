class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewable_type
      t.integer :reviewable_id
      t.string :text

      t.timestamps
    end
  end
end
