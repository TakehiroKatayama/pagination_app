class Post < ApplicationRecord
  validates :body, presence: true

  PER_PAGE = 10
end
