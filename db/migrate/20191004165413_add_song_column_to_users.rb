class AddSongColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :song, :string
  end
end
