class AddImageToUsers < ActiveRecord::Migration
  def change
    if !column_exists?(:users, :image)
      add_column :users, :image, :string
    end
  end
end
