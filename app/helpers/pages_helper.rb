module PagesHelper
  def create_articles(feed)
    feed.entries.each do |entry|
      artcile = Article.create(title: entry.title, url: entry.url, summary: entry.summary)
    end
  end
end
