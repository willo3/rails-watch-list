class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # dependent: :destroy means that when a list is deleted
  # the bookmarks are deleted too
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
end
