class PagesController < ApplicationController
  def home
    @post = Blog.all
  end

  def about
    @page_title = "About CryptoNet"
  end

  def contact
  end

  def bitcoin_news
     @tweets = SocialTool.twitter_search
     @page_title = "Live News"
  end
end
