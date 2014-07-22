class TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
	end

	def create
		@tweet = Tweet.new(tweet_params)
		respond_to do |format|
			if @tweet.save
				format.html {redirect_to @tweet, notice: 'Tweet successfully created.' }
			else format.html {render :new}
			end
end
