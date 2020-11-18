class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
end
