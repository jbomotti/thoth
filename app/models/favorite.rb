class Favorite < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
end
