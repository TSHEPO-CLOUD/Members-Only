# frozen_string_literal: false

class User < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_one_attached :avatar
end
