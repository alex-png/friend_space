class AddImageToPreference < ActiveRecord::Migration[6.0]
  def change
    add_column :preferences, :image, :string

  end
end
