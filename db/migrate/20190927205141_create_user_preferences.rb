class CreateUserPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :user_preferences do |t|
      t.references :user, index: true, foreign_key: true
      t.references :preference, index: true, foreign_key: true

    end
  end
end
