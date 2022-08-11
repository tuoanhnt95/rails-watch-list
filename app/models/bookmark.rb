class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 7 }
  validates :list, presence: true
  validates :movie, presence: true, uniqueness: { scope: :list }
end
