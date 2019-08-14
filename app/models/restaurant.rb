class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy

end
