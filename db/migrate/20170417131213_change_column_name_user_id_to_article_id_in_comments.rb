# frozen_string_literal: true

class ChangeColumnNameUserIdToArticleIdInComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :user_id, :article_id
  end
end
