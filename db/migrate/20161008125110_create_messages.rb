class CreateMessages < ActiveRecord::Migration
  def change
    if !table_exists?(:messages)
      create_table :messages do |t|
        t.timestamps
      end
    end
  end
end
