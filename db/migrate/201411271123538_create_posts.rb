class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :post_creator
      t.string :post_title
      t.string :post_description
      t.integer :post_price
      t.string :random_post_id
      t.timestamps
    end
  end
end