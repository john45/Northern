class Article < ApplicationRecord
  validates :title, :body, :user_id, presence: true
  validates :title, :body, length: { minimum: 2 }

  belongs_to :user

  default_scope -> { order(created_at: :desc) }

  self.per_page = 10
end
