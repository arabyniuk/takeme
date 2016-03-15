class AddTextToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :Text, :text
  end
end
