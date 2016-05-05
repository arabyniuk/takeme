class AddLangu2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lang2, :string
  end
end
