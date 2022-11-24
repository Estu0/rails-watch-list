class List < ApplicationRecord
  # has_many :bookmarks, :movies, dependent: :destroy
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
