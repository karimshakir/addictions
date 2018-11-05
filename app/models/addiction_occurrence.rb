class AddictionOccurrence < ApplicationRecord
  validates :circumstance, presence: true
  validates :circumstance, uniqueness: { case_sensitive: false }

  enum location: {work: 0, home: 1, car: 2, restaurant: 3}, _suffix: true
  belongs_to :user
  belongs_to :addiction


end
