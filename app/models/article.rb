class Article < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
end
