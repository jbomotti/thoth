module PagesHelper

  def get_feed
    url = "http://rss.nytimes.com/services/xml/rss/nyt/Technology.xml"
    Feedjira::Feed.fetch_and_parse url
  end

  def create_articles(feed)
    feed.entries.each do |entry|
      Article.create(title: entry.title, url: entry.url, published: entry.published)
    end
  end

  def add_favorite(id)
    article = Article.find(id)
    Favorite.create(title: article.title, url: article.url, published: article.published)
  end

  def remove_favorite(id)
    favorite = Favorite.find(id)
    favorite.destroy
  end

  def has_favorites
    Favorite.count > 0
  end

end
