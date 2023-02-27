class CreateReviews < ActiveRecord::Migration[6.1]
    def change
      create_table :reviews do |t|
        t.integer :user_id
        t.integer :product_id
        t.integer :star_rating
        t.string :comment
  
        t.timestamps
      end
  
      add_index :reviews, [:user_id, :product_id], unique: true
      add_foreign_key :reviews, :users
      add_foreign_key :reviews, :products
    end
end
  