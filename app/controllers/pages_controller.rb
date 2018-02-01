class PagesController < ApplicationController
  def home
    @post = Blog.all
  end

  def about
  end

  def contact
  end

  def bitcoin_news
     @tweets = SocialTool.twitter_search
  end
end
