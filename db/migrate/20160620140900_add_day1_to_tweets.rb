class AddDay1ToTweets < ActiveRecord::Migration
  def change
    if !column_exists?(:tweets, :day1)
      add_column :tweets, :day1, :datetime
    end
  end
end
