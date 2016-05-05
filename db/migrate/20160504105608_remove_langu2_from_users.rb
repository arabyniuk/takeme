class RemoveLangu2FromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :lang2, :string
  end
end
