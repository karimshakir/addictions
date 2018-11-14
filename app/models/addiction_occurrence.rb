class AddictionOccurrence < ApplicationRecord
  validates :circumstance, presence: true


  enum location: {work: 0, "my-home": 1, car: 2, restaurant: 3, bar: 4, club: 5, "a-house": 6, other: 7}, _suffix: true
  belongs_to :user
  belongs_to :addiction

end
