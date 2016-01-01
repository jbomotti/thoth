class PagesController < ApplicationController
  include PagesHelper
  def home
  end

  def about
  end

  def nytech
      feed = get_feed
      create_articles(feed)
      @articles = Article.order('published DESC')
  end

  def favorites
    remove_favorite(params[:favorite_id]) if params[:remove]
    add_favorite(params[:article_id]) if params[:article_id]
    @favorites = Favorite.order('published DESC')
  end
end
