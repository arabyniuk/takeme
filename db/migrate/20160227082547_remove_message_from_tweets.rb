class RemoveMessageFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :message, :text
  end
end
