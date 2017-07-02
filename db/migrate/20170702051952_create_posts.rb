class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :category
      t.string :title
      t.string :content
      t.string :image
      t.timestamps null: false
    end
  end
end
