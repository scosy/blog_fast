class RenamePostsTagsTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :posts_tags_tables, :posts_tags
  end
end
