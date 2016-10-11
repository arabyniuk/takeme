class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    if !column_exists?(:users, :first_name)
      add_column :users, :first_name, :string
    end
  end
end
