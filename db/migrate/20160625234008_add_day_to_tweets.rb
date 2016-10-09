class AddDayToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :day, :date
  end
end
