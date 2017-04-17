# frozen_string_literal: true

class AddAttachColumntArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :attach, :string
  end
end
