# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :body, :editable

  def editable
    scope == object.user
  end
end
