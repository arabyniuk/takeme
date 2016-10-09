class AddDay1ToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :day1, :datetime
  end
end
