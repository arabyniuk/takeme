class AddLanguage2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :language2, :string
  end
end
