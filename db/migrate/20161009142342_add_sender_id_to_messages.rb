class AddSenderIdToMessages < ActiveRecord::Migration
  def change
    if !column_exists?(:messages, :sender_id)
      add_column :messages, :sender_id, :integer, index: true
      add_foreign_key :messages, :users, column: :sender_id
    end
  end
end
