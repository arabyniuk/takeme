class AddUserIdToMessages < ActiveRecord::Migration
  def change
    if !column_exists?(:messages, :user_id)
      add_column :messages, :user_id, :integer
    end
  end
end
