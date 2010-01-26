class ChangeClassifierDefaults < ActiveRecord::Migration
  def self.up
    change_column :tweets, :interesting, :boolean, :default => false
    change_column :tweets, :read, :boolean, :default => false
    change_column :keywords, :text, :string, :default => ''
  end

  def self.down
    change_column :keywords, :text
    change_column :tweets, :read
    change_column :tweets, :interesting
  end
end
