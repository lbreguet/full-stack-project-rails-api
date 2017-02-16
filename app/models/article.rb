# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :body, presence: true
end
