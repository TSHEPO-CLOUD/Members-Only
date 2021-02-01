# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
end
