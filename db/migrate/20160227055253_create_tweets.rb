class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :name
      t.text   :place
      t.text   :day
      t.text   :message
      t.timestamps 
    end
  end
end
