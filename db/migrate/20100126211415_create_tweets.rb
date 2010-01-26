class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.integer :id
      t.integer :keyword_id
      t.integer :user_id
      t.string :text
      t.boolean :read
      t.boolean :interesting

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
