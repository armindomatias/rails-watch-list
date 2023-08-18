class Review < ApplicationRecord
  belongs_to :list

  validates :rating, :list, :content, presence: true
  validates :content, length: { minimum: 25 }
end
