class AddUniqueIndexToFollows < ActiveRecord::Migration[6.0]
  def change
    add_index :follows, [:follower_id, :followee_id], unique: true
  end
end
