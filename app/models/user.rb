class User < ActiveRecord::Base
  has_many :tweets
  has_many :keywords

  serialize     :classifier, Classifier::Bayes
  before_create :initialize_classifier
  before_update   :remove_stemmer

private

  def initialize_classifier
    self.classifier = Classifier::Bayes.new(
      :categories => ['Interesting', 'Uninteresting']
    )
    remove_stemmer
  end

  def remove_stemmer
    self.classifier.remove_stemmer
  end
end
