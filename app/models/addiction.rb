class Addiction < ApplicationRecord
  validates :name, presence: true

  has_many :addiction_occurences
  has_many :users, through: :addiction_occurences

end
