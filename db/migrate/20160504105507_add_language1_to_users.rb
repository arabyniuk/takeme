class AddLanguage1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :language1, :string
  end
end
