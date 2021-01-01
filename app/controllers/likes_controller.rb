class LikesController < ApplicationController
  before_action :set_tweet

  def create 
    @tweet.likes.create
  end

  private 

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end