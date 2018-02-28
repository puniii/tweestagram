class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :image
      t.string :user_id

      t.timestamps
    end
  end
end
