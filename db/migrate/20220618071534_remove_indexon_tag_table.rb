class RemoveIndexonTagTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tags, :posts, index: true, foreign_key: true
  end
end
