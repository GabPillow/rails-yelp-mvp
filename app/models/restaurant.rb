class Restaurant < ApplicationRecord
  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  has_many :reviews, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not a valid category" }
end
