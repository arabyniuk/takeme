class AddAttachmentImageToUsers < ActiveRecord::Migration
  def self.up
    if !column_exists?(:users, :image)
      change_table :users do |t|
        t.attachment :image
      end
    end
  end

  def self.down
    remove_attachment :users, :image
  end
end
