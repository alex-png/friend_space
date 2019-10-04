class CreateProfileComments < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_comments do |t|
      t.integer :commenter_id
      t.integer :profile_id
      t.string :comment

      t.timestamps
    end
  end
end
