class PagesController < ApplicationController
  include PagesHelper
  def home
  end

  def about
  end

  def nytech
      url = "http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml"
      @feed = Feedjira::Feed.fetch_and_parse url
      create_articles(@feed)
      @articles = Article.all
  end
end
