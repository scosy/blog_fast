class RemoveTagColumnInPostsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :tag
  end
end
