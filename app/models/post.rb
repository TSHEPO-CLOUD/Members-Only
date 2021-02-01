# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :title, length: { maximum: 100 } presence: true
  validates :description, presence: true
end
