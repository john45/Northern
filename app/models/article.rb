# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  attach     :string(255)
#

class Article < ApplicationRecord
  validates :title, :body, :user_id, presence: true
  validates :title, :body, length: { minimum: 2 }

  belongs_to :user
  has_many :comments

  default_scope -> { order(created_at: :desc) }

  mount_uploader :attach, AttachUploader

  self.per_page = 10
end
