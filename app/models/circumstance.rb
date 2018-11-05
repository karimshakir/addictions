class Circumstance < ApplicationRecord
  validates :description, presence: true
  validates :description, uniqueness: { case_sensitive: false }

  has_many :addiction_occurrences
  has_many :users, through: :addiction_occurrences
end
