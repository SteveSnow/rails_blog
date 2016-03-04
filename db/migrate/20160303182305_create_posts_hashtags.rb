class CreatePostsHashtags < ActiveRecord::Migration
  def change
    create_table :posts_hashtags do |t|
      t.integer :post_id
      t.integer :hashtag_id

      t.timestamps null: false
    end
  end
end
