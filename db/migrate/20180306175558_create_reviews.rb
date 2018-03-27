class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :potatoes
      t.string :integer
      t.string :comments
      t.references :movie, foreign_key: true
      t.references :movieuser, foreign_key: true

      t.timestamps
    end
  end
end
