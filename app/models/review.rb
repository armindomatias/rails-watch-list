class Review < ApplicationRecord
  belongs_to :list

  RATING = (1..5).to_a
  validates :rating, :list, :content, presence: true
  validates :content, length: { minimum: 5 }, uniqueness: true
  validates :rating, inclusion: RATING
end
