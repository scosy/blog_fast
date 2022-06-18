class CreatePostsTagsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :posts_tags_tables do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
