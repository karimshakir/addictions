class Addiction < ApplicationRecord
  validates :name, presence: true

  has_many :addiction_occurrences
  has_many :users, through: :addiction_occurrences

end
