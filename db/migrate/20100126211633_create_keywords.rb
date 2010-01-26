class CreateKeywords < ActiveRecord::Migration
  def self.up
    create_table :keywords do |t|
      t.integer :id
      t.integer :user_id
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :keywords
  end
end
