class Tweet < ActiveRecord::Base
  belongs_to :user
  belongs_to :keyword

  before_save :classify
  
  def classify
    text = self.text.gsub /#{self.keyword.text}/, ''
    if self.user.classifier.classify(text) == 'Interesting'
      self.interesting = true
    end
  end
end
