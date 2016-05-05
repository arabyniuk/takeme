class RemoveLang1FromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :lang1, :string
  end
end
