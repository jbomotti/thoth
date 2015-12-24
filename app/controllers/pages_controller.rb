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

  def favorites
    add_favorite(params[:article_id]) if params[:article_id]
    @favorites = Favorite.all
  end
end
