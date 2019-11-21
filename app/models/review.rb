class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end
