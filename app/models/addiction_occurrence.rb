class AddictionOccurrence < ApplicationRecord
  enum location: {work: 0, home: 1, car: 2, restaurant: 3}, _suffix: true
  belongs_to :user
  belongs_to :addiction
end
