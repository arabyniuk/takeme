class RemoveDay1FromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :day1, :datetime
  end
end
