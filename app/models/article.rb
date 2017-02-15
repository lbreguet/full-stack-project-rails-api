# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :users

  validates :title, presence: true
  validates :description, presence: true
  validates :body, presence: true
end
