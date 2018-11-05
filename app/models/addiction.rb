class Addiction < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  has_many :addiction_occurrences
  has_many :users, through: :addiction_occurrences

end
