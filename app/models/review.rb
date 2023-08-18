class Review < ApplicationRecord
  belongs_to :list

  validates :rating, :list, :content, presence: true
  validates :content, length: { minimum: 25 }
  validates :review_id, uniqueness: { scope: :list_id }
end
