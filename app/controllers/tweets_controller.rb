class TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
	end

	def create
		@tweet = Tweet.new(tweet_params)
		respond_to do |format|
			if @tweet.save
				format.html {redirect_to @tweet, notice: 'Tweet successfully created.' }
			else 
        format.html {render :new}
			end
    end
  end

	def show
    @tweet = Tweet.find(params[:id])
	end
	def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  	private
  

    def tweet_params
      params.require(:tweet).permit(:content, :user_id)
    end
  
end
