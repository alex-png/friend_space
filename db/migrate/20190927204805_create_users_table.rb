class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name 
      t.integer :age
      t.string :bio
      
      t.timestamps
    end
  end
end
