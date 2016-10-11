class AddMessageToMessages < ActiveRecord::Migration
  def change
    if !column_exists?(:messages, :message)
      add_column :messages, :message, :string
    end
  end
end
