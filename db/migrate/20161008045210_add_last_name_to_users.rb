class AddLastNameToUsers < ActiveRecord::Migration
  def change
    if !column_exists?(:users, :last_name)
      add_column :users, :last_name, :string
    end
  end
end
