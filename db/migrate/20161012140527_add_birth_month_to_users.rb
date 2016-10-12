class AddBirthMonthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth_month, :string
  end
end
