class AddLang1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lang1, :string
  end
end
