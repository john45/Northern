# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  ancestry   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer
#

class Comment < ApplicationRecord
  belongs_to :article
  has_ancestry
end
