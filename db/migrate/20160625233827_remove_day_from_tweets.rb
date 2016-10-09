class RemoveDayFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :day, :text
  end
end
