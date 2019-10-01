class CreatePreferencesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.string :name
    end
  end
end
