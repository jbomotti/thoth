module PagesHelper
  def create_articles(feed)
    feed.entries.each do |entry|
      Article.create(title: entry.title, url: entry.url, summary: entry.summary)
    end
  end

  def add_favorite(id)
    article = Article.find(id)
    Favorite.create(title: article.title, url: article.url, summary: article.summary)
  end
end
