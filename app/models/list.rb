class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  has_one_attached :photo

  validates :name, :photo, presence: true, uniqueness: true
end
