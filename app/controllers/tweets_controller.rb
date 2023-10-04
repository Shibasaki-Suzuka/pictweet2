class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  # どのツイートか特定する場合はparams[:id]を使用
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
