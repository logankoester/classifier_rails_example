class Keyword < ActiveRecord::Base
  belongs_to :user
  has_many   :tweets, :dependent => :destroy

  after_save :search

  def search
    search = Twitter::Search.new(self.text).fetch
    search.results.each do |r|
      t = Tweet.create(
        :keyword => self,
        :user_id => self.user,
        :text => r.text
      )
      t.save
    end
  end
end
