class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
    unless @tweet.read?
      current_user.classifier.train_interesting(
        @tweet.text.gsub(/#{@tweet.keyword.text}/, '')
      )
      current_user.save
      @tweet.read = true
      @tweet.save
    end
  end

  def destroy
    if @tweet = Tweet.find(params[:id])
      if @tweet.destroy
        current_user.classifier.train_uninteresting(
          @tweet.text.gsub(/#{@tweet.keyword.text}/, '')
        )
        current_user.save
      end
    end
  end
end
